#ifndef CLIENTMODEL_H
#define CLIENTMODEL_H

#include <QObject>

class OptionsModel;
class AddressTableModel;
class TransactionTableModel;
class CWallet;

QT_BEGIN_NAMESPACE
class QDateTime;
QT_END_NAMESPACE

/** Model for Bitcoin network client. */
class ClientModel : public QObject
{
    Q_OBJECT
public:
    explicit ClientModel(OptionsModel *optionsModel, QObject *parent = 0);

    OptionsModel *getOptionsModel() const;

    int getNumConnections() const;

    int getNumBlocks() const;
    int getNumBlocksAtStartup();

    QString getHeadHash() const;

    QDateTime getLastBlockDate() const;

    //! Return true if core is doing initial block download
    bool inInitialBlockDownload() const;

    //! Return conservative estimate of total number of blocks, or 0 if unknown
    int getNumBlocksOfPeers() const;

    //! Return warnings to be displayed in status bar
    QString getStatusBarWarnings() const;

    QString formatFullVersion() const;
    QString formatBuildDate() const;
    QString clientName() const;

    qint64 getPoolFunds() const;

private:
    OptionsModel *optionsModel;

    int cachedNumConnections;
    int cachedNumBlocks;
    QString cachedHeadHash;
    QString cachedStatusBar;
    qint64 cachedPoolFunds;

    int numBlocksAtStartup;

signals:
    void numConnectionsChanged(int count);
    void numBlocksChanged(int count);
    void headChanged(QString head);
    void poolFundsChanged(qint64 poolFunds);

    //! Asynchronous error notification
    void error(const QString &title, const QString &message, bool modal);

public slots:

private slots:
    void update();
};

#endif // CLIENTMODEL_H
