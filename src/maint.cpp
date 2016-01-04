#include "maint.h"
#include "util.h"
#include "main.h"


void ThreadMaint(void* parg)
{
  CBlockIndex *last_pindex;
  CTransaction propTx;

  std::string title;
  uint160 gitHash;
  timestamp_t deadline;
  int version;
  
  while(!fShutdown)
    {
      //we just spin lock like a lazy Sunday in the country...
      Sleep(10000);

      if(last_pindex != pindexBest)
	{
	  last_pindex = pindexBest;

	  if(last_pindex->upgradePropHash == 0)
	    continue;
	    
	  CTxDb db("r");
	  db.ReadDiskTx(last_pindex->upgradePropHash, propTx);
	  GetPropUpgradeInfo(propTx, version, deadline, gitHash, title);
	}
      else if(last_pindex->upgradePropHash == 0)
	continue;
      
      if(version > CLIENT_VERSION)
	{
	  printf("*** An upgrade of the client MUST be performed.\n");
	  
	  timestamp_t timeLeft = deadline - GetAdjustedTime();

	  printf("New version #:   %20d\n"
		 "Deadline:        %20s\n"
		 "Source git hash: %20s\n"
		 "Proposal Addr:   %20s\n"
		 "Proposal Title:  %20s\n"
		 version,
		 DateTimeStrFormat(deadline).c_str(),
		 gitHash.GetHex().c_str(),
		 CProposalAddr(propHash),
		 title);
	      
	  if(timeLeft > 0)
	    {
	      printf("*** You have %ld seconds before deadline expires."
		     "*** Afterwards, client will shutdown and refuse to start.\n",
		     timeLeft);
	    }
	  else
	    {
	      printf("*** Deadline has expired. Will shutdown now\n");
	      StartShutdown();
		  
	      //TODO 2 pop up dialog for QT
	      return;
	    }
	}
    }
}



