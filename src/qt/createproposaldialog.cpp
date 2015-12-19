#include "createproposaldialog.h"
#include "ui_createproposaldialog.h"
#include "clientmodel.h"
#include "walletmodel.h"
#include "bitcoinunits.h"
#include "addressbookpage.h"
#include "optionsmodel.h"
#include "createproposalpaytoentry.h"
#include "guiutil.h"
#include "askpassphrasedialog.h"
#include "constants.h"

#include <QMessageBox>
#include <QLocale>
#include <QTextDocument>
#include <QScrollBar>

#include <stdio.h>
#include <string.h>
#include "wallet.h"
#include "script.h"

#include "./createproposaldialog.moc"

CreateProposalDialog::CreateProposalDialog(QWidget *parent) :
	QDialog(parent), ui(new Ui::CreateProposalDialog), model(0) {
	ui->setupUi(this);

#ifdef Q_WS_MAC // Icons on push buttons are very uncommon on Mac
	ui->addButton->setIcon(QIcon());
	ui->clearButton->setIcon(QIcon());
	ui->createButton->setIcon(QIcon());
#endif

	connect(ui->upgradeCheckbox, &QCheckBox::clicked, this, &CreateProposalDialog::updateUpgradeFields);
	connect(ui->spendPoolFundsCheckBox, &QCheckBox::clicked, this, &CreateProposalDialog::updateSpendPoolFields);
	connect(ui->addButton, &QPushButton::clicked, this, &CreateProposalDialog::addEntry);
	connect(ui->clearButton, &QPushButton::clicked, this, &CreateProposalDialog::clear);

	fNewRecipientAllowed = true;

	QDateTime minDateTime = QDateTime::currentDateTime().addSecs(MIN_PROPOSAL_DEADLINE_TIME + 1 * HOUR);
	QDateTime maxDateTime = minDateTime.addSecs(MAX_PROPOSAL_DEADLINE_TIME);

	//default 3 days later at 9 pm
	QDateTime defaultDateTime = minDateTime.addDays(3);

	defaultDateTime.setTime(QTime());//clear time
	defaultDateTime = defaultDateTime.addSecs(21 * HOUR);//set to 9 pm

	connect(ui->editDeadline, &QDateTimeEdit::dateTimeChanged, this, &CreateProposalDialog::updateLabelEditDeadline);

	ui->editDeadline->setDateTimeRange(minDateTime, maxDateTime);
	ui->editDeadline->setDateTime(defaultDateTime);

	updateUpgradeFields();
	updateSpendPoolFields();

}

void CreateProposalDialog::updateLabelEditDeadline() {
	QDateTime dt = ui->editDeadline->dateTime().toUTC();

	ui->labelEditDeadline->setText(dt.toString("yyyy-MM-dd hh:mm:ss t"));//Qt::ISODate));

	if (ui->upgradeCheckbox->isChecked()) {
		ui->editUpgradeDeadline->setMinimumDateTime(ui->editDeadline->dateTime());
	}
}

void CreateProposalDialog::updateLabelEditUpgradeDeadline() {
	if (ui->upgradeCheckbox->isChecked()) {
		QDateTime dt = ui->editUpgradeDeadline->dateTime().toUTC();

		ui->labelEditUpgradeDeadline->setText(dt.toString("yyyy-MM-dd hh:mm:ss t"));//Qt::ISODate));
	} else
		ui->labelEditUpgradeDeadline->clear();
}

void CreateProposalDialog::updateUpgradeFields() {
	bool isUpgrade = ui->upgradeCheckbox->isChecked();

	ui->editUpgradeDeadline->setEnabled(isUpgrade);
	ui->editUpgradeGitCommit->setEnabled(isUpgrade);
	ui->editUpgradeVersion->setEnabled(isUpgrade);
	ui->labelUpgradeDeadline->setEnabled(isUpgrade);
	ui->labelUpgradeGitCommit->setEnabled(isUpgrade);
	ui->labelUpgradeVersion->setEnabled(isUpgrade);
	ui->labelVersionText->setEnabled(isUpgrade);
	ui->labelVersion->setEnabled(isUpgrade);
	ui->labelGitCommitText->setEnabled(isUpgrade);
	ui->labelGitCommit->setEnabled(isUpgrade);

	if (!isUpgrade) {
		ui->editUpgradeDeadline->clear();
		ui->editUpgradeGitCommit->clear();
		ui->editUpgradeVersion->clear();
		ui->labelEditUpgradeDeadline->clear();
	} else {
		ui->editUpgradeDeadline->setDateTime(ui->editDeadline->dateTime().addDays(14));
		ui->editUpgradeDeadline->setMinimumDateTime(ui->editDeadline->dateTime());
		ui->editUpgradeVersion->setText(
				QString("%1.%2.%3.%4") .arg(CLIENT_VERSION_MAJOR).arg(CLIENT_VERSION_MINOR) .arg(
						CLIENT_VERSION_REVISION).arg(CLIENT_VERSION_BUILD + 1));
	}

}

void CreateProposalDialog::updateSpendPoolFields() {
	bool isSpendPool = ui->spendPoolFundsCheckBox->isChecked();

	ui->addButton->setEnabled(isSpendPool);
	ui->clearButton->setEnabled(isSpendPool);
	ui->labelPoolFunds->setEnabled(isSpendPool);
	ui->labelPoolFundsDesc->setEnabled(isSpendPool);

	if (!isSpendPool) {
		clear();
	}

}

void CreateProposalDialog::setModel(WalletModel *model) {
	this->model = model;

	for (int i = 0; i < ui->entries->count(); ++i) {
		CreateProposalPayToEntry *entry = qobject_cast<CreateProposalPayToEntry*> (ui->entries->itemAt(i)->widget());
		if (entry) {
			entry->setModel(model);
		}
	}
	if (model) {
		if (clientModel)
			this->setPoolFunds(clientModel->getPoolFunds());
	}
}

void CreateProposalDialog::setClientModel(ClientModel *clientModel) {
	this->clientModel = clientModel;

	if (clientModel) {
		this->setPoolFunds(clientModel->getPoolFunds());
		connect(clientModel, &ClientModel::poolFundsChanged, this, &CreateProposalDialog::setPoolFunds);
	}
}

CreateProposalDialog::~CreateProposalDialog() {
	delete ui;
}

void CreateProposalDialog::on_createButton_clicked() {
	if (!model)
		return;

	CProposal proposal;

	std::string title = ui->editTitle->text().toStdString();
	const std::vector<unsigned char> titlecharvect(title.begin(), title.end());

	timestamp_t deadline = ui->editDeadline->dateTime().toMSecsSinceEpoch()/1000;

	CTransaction tx;
	tx.vin.resize(1);
	tx.vin[0].prevout.SetProposal();

	CScript pubScript;
	pubScript << OP_PUBLIC_SCRIPT << deadline <<
			OP_VOTE_DEADLINE << titlecharvect << OP_VOTE_TITLE;

	if (ui->upgradeCheckbox->isChecked()) {
		int upgradeClientVersion;

		if(!convertStringToClientVersion(ui->editUpgradeVersion->text().toStdString(),
				upgradeClientVersion))
		{
			QMessageBox::warning(this, tr("Create Proposal"),
					tr("The upgrade client version must be in the form XX.XX.XX.XX"),
					QMessageBox::Ok, QMessageBox::Ok);
			return;
		}

		if(upgradeClientVersion <= CLIENT_VERSION)
		{
			QMessageBox::warning(this, tr("Create Proposal"),
					tr("The upgrade client version must be greater than the current client version"),
					QMessageBox::Ok, QMessageBox::Ok);
			return;
		}

		string gitStr = ui->editUpgradeGitCommit->text().toStdString();

		if(!verify160HashStr(gitStr))
		{
			QMessageBox::warning(this, tr("Create Proposal"),
					tr("The upgrade git hash must be a 40 character hexidecimal string, "
							"ex '0123456789abcdef0123456789abcdef01234567'"),
					QMessageBox::Ok, QMessageBox::Ok);
			return;
		}

		uint160 gitHash = uint160(gitStr);

		timestamp_t upgradeDeadlineEpoch = ui->editUpgradeDeadline->dateTime().toMSecsSinceEpoch()/1000;

		pubScript = pubScript  << gitHash
				<< upgradeDeadlineEpoch << upgradeClientVersion << OP_UPGRADE_CLIENT;
	}

	bool valid = true;

	for (int i = 0; i < ui->entries->count(); ++i) {
		CreateProposalPayToEntry *entry = qobject_cast<CreateProposalPayToEntry*> (ui->entries->itemAt(i)->widget());

		if(!entry->validate())
			return;

		CBitcoinAddress address(entry->ui->payTo->text().toStdString());
		money_t amt = entry->ui->payAmount->value();

		CScript sendMoney;
		sendMoney.SetDestination(address.Get());

		CTxOut out(amt, sendMoney);
		tx.vout.push_back(out);

	}

	CTxOut publicOut(0, pubScript);
	tx.vout.insert(tx.vout.begin(), publicOut);

	proposal.proposalTxn = tx;
	proposal.ResetSelfHash();

	//TODO 2 display proposal fee
	QMessageBox::StandardButton retval =
			QMessageBox::question(this, tr("Confirm create proposal"),
			tr("Are you sure you want to create this proposal?");

	if (retval != QMessageBox::Yes) {
		return;
	}

	WalletModel::UnlockContext ctx(model->requestUnlock());
	if (!ctx.isValid()) {
		// Unlock wallet was cancelled
		return;
	}

	//TODO 2 display proposal tx in pasteable format

	WalletModel::SendCoinsReturn sendstatus = model->sendCoins(recipients);
	switch (sendstatus.status) {
	case WalletModel::InvalidAddress:
		QMessageBox::warning(this, tr("Send Coins"), tr("The recepient address is not valid, please recheck."),
				QMessageBox::Ok, QMessageBox::Ok);
		break;
	case WalletModel::InvalidAmount:
		QMessageBox::warning(this, tr("Send Coins"), tr("The amount to pay must be at least one cent (0.01)."),
				QMessageBox::Ok, QMessageBox::Ok);
		break;
	case WalletModel::AmountExceedsBalance:
		QMessageBox::warning(this, tr("Send Coins"), tr("Amount exceeds your balance"), QMessageBox::Ok,
				QMessageBox::Ok);
		break;
	case WalletModel::AmountWithFeeExceedsBalance:
		QMessageBox::warning(
				this,
				tr("Send Coins"),
				tr("Total exceeds your balance when the %1 transaction fee is included"). arg(
						BitcoinUnits::formatWithUnit(BitcoinUnits::BTC, sendstatus.fee)), QMessageBox::Ok,
				QMessageBox::Ok);
		break;
	case WalletModel::DuplicateAddress:
		QMessageBox::warning(this, tr("Send Coins"),
				tr("Duplicate address found, can only send to each address once in one send operation"),
				QMessageBox::Ok, QMessageBox::Ok);
		break;
	case WalletModel::TransactionCreationFailed:
		QMessageBox::warning(this, tr("Send Coins"), tr("Error: Transaction creation failed  "), QMessageBox::Ok,
				QMessageBox::Ok);
		break;
	case WalletModel::TransactionCommitFailed:
		QMessageBox::warning(
				this,
				tr("Send Coins"),
				tr(
						"Error: The transaction was rejected.  This might happen if some of the coins in your wallet were already spent, such as if you used a copy of wallet.dat and coins were spent in the copy but not marked as spent here."),
				QMessageBox::Ok, QMessageBox::Ok);
		break;
	case WalletModel::Aborted: // User aborted, nothing to do
		break;
	case WalletModel::OK:
		accept();
		break;
	}
}

void CreateProposalDialog::clear() {
	// Remove all entries
	while (ui->entries->count()) {
		QWidget *w = ui->entries->itemAt(0)->widget();

		if (w == ui->verticalSpacer->widget())
			break;

		delete ui->entries->takeAt(0)->widget();
	}

	ui->createButton->setDefault(true);
}

void CreateProposalDialog::reject() {
	clear();
}

void CreateProposalDialog::accept() {
	clear();
}

CreateProposalPayToEntry *CreateProposalDialog::addEntry() {
	CreateProposalPayToEntry *entry = new CreateProposalPayToEntry(this);
	entry->setModel(model);
	ui->entries->insertWidget(0, entry);
	connect(entry, &CreateProposalPayToEntry::removeEntry, this, &CreateProposalDialog::removeEntry);

	// Focus the field, so that entry can start immediately
	entry->clear();
	entry->setFocus();
	ui->scrollAreaWidgetContents->resize(ui->scrollAreaWidgetContents->sizeHint());
	QCoreApplication::instance()->processEvents();
	QScrollBar* bar = ui->scrollArea->verticalScrollBar();
	if (bar)
		bar->setSliderPosition(bar->maximum());
	return entry;
}

void CreateProposalDialog::removeEntry(CreateProposalPayToEntry* entry) {
	delete entry;
}

QWidget *CreateProposalDialog::setupTabChain(QWidget *prev) {
	for (int i = 0; i < ui->entries->count(); ++i) {
		CreateProposalPayToEntry *entry = qobject_cast<CreateProposalPayToEntry*> (ui->entries->itemAt(i)->widget());
		if (entry) {
			prev = entry->setupTabChain(prev);
		}
	}
	QWidget::setTabOrder(prev, ui->addButton);
	QWidget::setTabOrder(ui->addButton, ui->createButton);
	return ui->createButton;
}

void CreateProposalDialog::pasteEntry(const SendCoinsRecipient &rv) {
	CreateProposalPayToEntry *entry = 0;
	// Replace the first entry if it is still unused
	if (ui->entries->count() == 1) {
		CreateProposalPayToEntry *first = qobject_cast<CreateProposalPayToEntry*> (ui->entries->itemAt(0)->widget());
		if (first->isClear()) {
			entry = first;
		}
	}
	if (!entry) {
		entry = addEntry();
	}

	entry->setValue(rv);
}

void CreateProposalDialog::handleURI(const QString &uri) {
	SendCoinsRecipient rv;
	if (!GUIUtil::parseBitcoinURI(uri, &rv)) {
		return;
	}
	pasteEntry(rv);
}

void CreateProposalDialog::setPoolFunds(qint64 poolFunds) {
	if (!model || !model->getOptionsModel())
		return;

	int unit = model->getOptionsModel()->getDisplayUnit();
	ui->labelPoolFunds->setText(BitcoinUnits::formatWithUnit(unit, poolFunds));
}
