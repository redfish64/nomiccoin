#include <QApplication>
#include <QClipboard>

#include "../constants.h"

#include "ui_createproposalpaytoentry.h"

#include "addressbookpage.h"
#include "addresstablemodel.h"
#include "bitcoinunits.h"
#include "sendcoinsentry.h"
#include "guiutil.h"
#include "optionsmodel.h"
#include "walletmodel.h"

#include "./createproposalpaytoentry.moc"

CreateProposalPayToEntry::CreateProposalPayToEntry(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::CreateProposalPayToEntry),
    model(0)
{
    ui->setupUi(this);

#ifdef Q_WS_MAC
    ui->payToLayout->setSpacing(4);
#endif

#if QT_VERSION >= 0x040700
    ui->payTo->setPlaceholderText(tr("Enter a " COIN_NAME " address"));
#endif
    setFocusPolicy(Qt::TabFocus);
    setFocusProxy(ui->payTo);

    GUIUtil::setupAddressWidget(ui->payTo, this);
}

CreateProposalPayToEntry::~CreateProposalPayToEntry()
{
    delete ui;
}

void CreateProposalPayToEntry::on_pasteButton_clicked()
{
    // Paste text from clipboard into recipient field
    ui->payTo->setText(QApplication::clipboard()->text());
}

void CreateProposalPayToEntry::on_addressBookButton_clicked()
{
    if(!model)
        return;
    AddressBookPage dlg(AddressBookPage::ForSending, AddressBookPage::SendingTab, this);
    dlg.setModel(model->getAddressTableModel());
    if(dlg.exec())
    {
        ui->payTo->setText(dlg.getReturnValue());
        ui->payAmount->setFocus();
    }
}

void CreateProposalPayToEntry::setModel(WalletModel *model)
{
    this->model = model;
    clear();
}

void CreateProposalPayToEntry::setRemoveEnabled(bool enabled)
{
    ui->deleteButton->setEnabled(enabled);
}

void CreateProposalPayToEntry::clear()
{
    ui->payTo->clear();
    ui->payAmount->clear();
    ui->payTo->setFocus();
    if(model && model->getOptionsModel())
    {
        ui->payAmount->setDisplayUnit(model->getOptionsModel()->getDisplayUnit());
    }
}

void CreateProposalPayToEntry::on_deleteButton_clicked()
{
    emit removeEntry(this);
}

//bool CreateProposalPayToEntry::getPayToAmount()
//{
//    // Check input validity
//    bool retval = true;
//
//    if(!ui->payAmount->validate())
//    {
//        retval = false;
//    }
//}
//
//
//bool CreateProposalPayToEntry::getPayToAmount()
//{
////        if(ui->payAmount->value() <= 0)
////        {
////            // Cannot send 0 coins or less
////            ui->payAmount->setValid(false);
////            retval = false;
////        }
////    }
////
////    if(!ui->payTo->hasAcceptableInput() ||
////       (model && !model->validateAddress(ui->payTo->text())))
////    {
////        ui->payTo->setValid(false);
////        retval = false;
////    }
////
////    return retval;
//	//TODO 1 fixme
//	return false;
//}

SendCoinsRecipient CreateProposalPayToEntry::getValue()
{
    SendCoinsRecipient rv;

    rv.address = ui->payTo->text();
    rv.amount = ui->payAmount->value();

    return rv;
}

QWidget *CreateProposalPayToEntry::setupTabChain(QWidget *prev)
{
    QWidget::setTabOrder(prev, ui->payTo);
    QWidget::setTabOrder(ui->payTo, ui->addressBookButton);
    QWidget::setTabOrder(ui->addressBookButton, ui->pasteButton);
    QWidget::setTabOrder(ui->pasteButton, ui->deleteButton);
    return ui->payAmount->setupTabChain(ui->deleteButton);
}

void CreateProposalPayToEntry::setValue(const SendCoinsRecipient &value)
{
    ui->payTo->setText(value.address);
    ui->payAmount->setValue(value.amount);
}

bool CreateProposalPayToEntry::isClear()
{
    return ui->payTo->text().isEmpty();
}

void CreateProposalPayToEntry::setFocus()
{
    ui->payTo->setFocus();
}
