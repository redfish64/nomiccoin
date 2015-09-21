#include "clientmodel.h"
#include "guiconstants.h"
#include "optionsmodel.h"
#include "addresstablemodel.h"
#include "transactiontablemodel.h"

#include "main.h"
#include "wallet.h"

#include <QDateTime>
#include <cmath>

#include "./clientmodel.moc"

ClientModel::ClientModel(OptionsModel *optionsModel, QObject *parent) :
  QObject(parent), optionsModel(optionsModel),
  cachedNumConnections(0), cachedNumBlocks(0)
{
    numBlocksAtStartup = -1;
}

int ClientModel::getNumConnections() const
{
    return vNodes.size();
}

QString ClientModel::getHeadHash() const
{
    return QString(hashBestChain.GetHex().c_str());
}

int ClientModel::getNumBlocks() const
{
    return nBestHeight;
}

int ClientModel::getNumBlocksAtStartup()
{
    if (numBlocksAtStartup == -1) numBlocksAtStartup = getNumBlocks();
    return numBlocksAtStartup;
}

QDateTime ClientModel::getLastBlockDate() const
{
    return QDateTime::fromTime_t(pindexBest->GetBlockTime());
}


int hack = 0;

QString getStakingStatus()
{
  CoinStakeStatus css = getLastCoinStakeStatus();

  if(css.coinsStaked > 0 && css.totalTarget != CBigNum(0))
  {

    //double stakeDays = log(.5)/ log(1-css.getOdds()) /3600./24.;
    double stakeDays = 1/css.getOdds() /3600./24.;

     return QString("Avg days to next stake %1. %2").arg(stakeDays, 0, 'f', 2)
       .arg(hack++, 0, 'f', 2);
  }

  if(css.state == OK)
    {
      if(css.timeForAllCoinsToStake > 0)
	{
	  double daysForCoinsToStake = css.timeForAllCoinsToStake / 3600.;
	  
	  return QString("Staking hasn't reached min age. Hours left: %1.").arg(daysForCoinsToStake, 0, 'f', 2);
	}
      return QString("Not minting.");
    }
  
  return QString("Not minting. State %1").arg(css.state, 0, 'f', 2);
}

void ClientModel::update()
{
    int newNumConnections = getNumConnections();
    int newNumBlocks = getNumBlocks();
    QString newHeadHash = getHeadHash();
    QString newStatusBar = getStatusBarWarnings();

    if (cachedNumConnections != newNumConnections)
        emit numConnectionsChanged(newNumConnections);

    if (cachedHeadHash != newHeadHash)
        emit headChanged(newHeadHash);

    if (cachedNumBlocks != newNumBlocks || cachedStatusBar != newStatusBar)
    {
        // Simply emit a numBlocksChanged for now in case the status message changes,
        // so that the view updates the status bar.
        // TODO: It should send a notification.
        //    (However, this might generate looped notifications and needs to be thought through and tested carefully)
        //    error(tr("Network Alert"), newStatusBar);
        emit numBlocksChanged(newNumBlocks);
    }

    cachedNumConnections = newNumConnections;
    cachedNumBlocks = newNumBlocks;
    cachedHeadHash = newHeadHash;
    cachedStatusBar = newStatusBar;
}

bool ClientModel::inInitialBlockDownload() const
{
    return IsInitialBlockDownload();
}

int ClientModel::getNumBlocksOfPeers() const
{
    return GetNumBlocksOfPeers();
}

QString ClientModel::getStatusBarWarnings() const
{
  return (QString::fromStdString(GetWarnings("statusbar"))).append(" ").append(getStakingStatus());
}

OptionsModel *ClientModel::getOptionsModel()
{
    return optionsModel;
}

QString ClientModel::formatFullVersion() const
{
    return QString::fromStdString(FormatFullVersion());
}

QString ClientModel::formatBuildDate() const
{
    return QString::fromStdString(CLIENT_DATE);
}

QString ClientModel::clientName() const
{
    return QString::fromStdString(CLIENT_NAME);
}
