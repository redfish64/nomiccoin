#include "clientmodel.h"
#include "guiconstants.h"
#include "optionsmodel.h"
#include "addresstablemodel.h"
#include "transactiontablemodel.h"
#include "bitcoinunits.h"

#include "main.h"
#include "wallet.h"

#include <QDateTime>
#include <cmath>

#include "./clientmodel.moc"

#include "GetProofOfStakeReward.h"

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


/**
 We want to gather:

 Coins minting
 Time before all coins begin minting
 Current interest rate
 Expected next coinstake
*/
QString ClientModel::getStakingStatus() const
{
  CoinStakeStatus css = getLastCoinStakeStatus();

  int unit = getOptionsModel()->getDisplayUnit();
  QString coinsMinting = BitcoinUnits::formatWithUnit(unit, css.coinsMinting);
  QString currReward = BitcoinUnits::formatWithUnit(unit, (css.currReward+CENT/2)/CENT*CENT);
  double hoursForCoinsToStartMinting = css.timeForAllCoinsToStartMinting / 3600.;

  double currentInterestRate = GetProofOfStakeReward(ONE_YEAR_ONE_COIN_AGE, getNumBlocks()) * .0001;

  double stakeDays;

  if(css.coinsMinting > 0 && css.totalTarget != CBigNum(0))
    stakeDays = 1/css.getOdds() /3600./24.;
  else
    stakeDays = 0.;


  QString timeUntilAllCoinsMintStr;

  if(hoursForCoinsToStartMinting != 0)
    timeUntilAllCoinsMintStr = QString("hoursForCoinsToStartMinting: %1. ").arg(hoursForCoinsToStartMinting, 0, 'f', 2);
  else
    timeUntilAllCoinsMintStr = QString("");

  QString stakeDaysStr;

  if(stakeDays != 0.)
    stakeDaysStr = QString("expStakeDays %1. ").arg(stakeDays, 0, 'f', 2);
  else
    stakeDaysStr = "";

  QString out = QString("minting: "+coinsMinting+". "+timeUntilAllCoinsMintStr+stakeDaysStr
			+QString("currAPY %1%").arg(currentInterestRate,0, 'f', 1)
			+QString(". numUTXO %1").arg((double)css.numUTXO,0,'f',0)
			+". currUnclaimedReward "+currReward);

  return out;
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

OptionsModel *ClientModel::getOptionsModel() const
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
