#ifndef CREATEPROPOSALPAYTOENTRY_H
#define CREATEPROPOSALPAYTOENTRY_H

#include <QFrame>

namespace Ui {
    class CreateProposalPayToEntry;
}
class WalletModel;
class SendCoinsRecipient;

/** A single entry in the dialog for sending bitcoins. */
class CreateProposalPayToEntry : public QFrame
{
    Q_OBJECT

public:
    explicit CreateProposalPayToEntry(QWidget *parent = 0);
    ~CreateProposalPayToEntry();

    void setModel(WalletModel *model);
    bool validate();
    SendCoinsRecipient getValue();

    /** Return whether the entry is still empty and unedited */
    bool isClear();

    void setValue(const SendCoinsRecipient &value);

    /** Set up the tab chain manually, as Qt messes up the tab chain by default in some cases (issue http://bugreports.qt.nokia.com/browse/QTBUG-10907).
     */
    QWidget *setupTabChain(QWidget *prev);

    void setFocus();

public slots:
    void setRemoveEnabled(bool enabled);
    void clear();

signals:
    void removeEntry(CreateProposalPayToEntry *entry);

private slots:
    void on_deleteButton_clicked();
    void on_addressBookButton_clicked();
    void on_pasteButton_clicked();

private:
    Ui::CreateProposalPayToEntry *ui;
    WalletModel *model;
};

#endif // CREATEPROPOSALPAYTOENTRY_H
