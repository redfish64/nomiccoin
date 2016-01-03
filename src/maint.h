// Copyright (c) 2015-2016 Rareventure LLC
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOIN_MAINT_H
#define BITCOIN_MAINT_H

#include "db.h"

//for general periodic background tasks

/**
 * A specific upgrade request
 */
class CUpgradeRequest
{
 public:
  int blockHeight;
  
  int upgradeVersion;//zero if no upgrade. Value of the CLIENT_VERSION constant of the
  //upgraded version
  
  uint160 upgradeGitCommit; //git commit of upgrade.

  uint64 upgradeDeadline; //after this deadline, if the upgrade hasn't occurred yet, the
  //client will shutdown and refuse to run

  votehash_t propHash;

  //in memory only
  CTransaction propTx;

  void SetNull()
  {
    blockHeight = 0;
    upgradeVersion = 0;
    upgradeGitCommit = 0;
    upgradeDeadline = 0;
    propHash = 0;
    propTx = CTransaction();
    }

  IMPLEMENT_SERIALIZE
    (
     READWRITE(blockHeight);
     READWRITE(upgradeVersion);
     READWRITE(upgradeGitCommit);
     READWRITE(upgradeDeadline);
     READWRITE(propHash);
     );

  uint256 GetHash() const
  {
    return SerializeHash(*this);
  }

  bool loadPropTx(CTxDb& db)
  {
    return db.ReadDiskTx(ur.propHash, ur.propTx);
  }
    
};

extern CCriticalSection cs_currUpgradeRequest;
  
extern CUpgradeRequest currUpgradeRequest;

extern void ThreadMaint(void* parg);

#endif
