#ifndef CREATEPROPOSALDIALOG_H
#define CREATEPROPOSALDIALOG_H

#include <QDialog>

namespace Ui {
    class CreateProposalDialog;
}
class WalletModel;
class ClientModel;
class CreateProposalPayToEntry;
class SendCoinsRecipient;

QT_BEGIN_NAMESPACE
class QUrl;
QT_END_NAMESPACE

/** Dialog for creating a proposal */
class CreateProposalDialog : public QDialog
{
    Q_OBJECT
public:
    explicit CreateProposalDialog(QWidget *parent = 0);
    ~CreateProposalDialog();
    void setModel(WalletModel *model);
    void setClientModel(ClientModel *model);
    /** Set up the tab chain manually, as Qt messes up the tab chain by default in some cases (issue http://bugreports.qt.nokia.com/browse/QTBUG-10907).
     */
    QWidget *setupTabChain(QWidget *prev);
    void pasteEntry(const SendCoinsRecipient & rv);
    void handleURI(const QString & uri);
public:
    void clear();
    void reject();
    void accept();
    CreateProposalPayToEntry *addEntry();
    void setPoolFunds(qint64 poolFunds);
private:
    Ui::CreateProposalDialog *ui;
    WalletModel *model;
    ClientModel *clientModel;
private slots:
	void updateUpgradeFields();
	void updateSpendPoolFields();
	void updateLabelEditDeadline();
	void updateLabelEditUpgradeDeadline();
    void on_createButton_clicked();

    void removeEntry(CreateProposalPayToEntry* entry);
};

#endif // CREATEPROPOSALDIALOG_H
