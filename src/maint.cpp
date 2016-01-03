#include "maint.h"
#include "util.h"


void LoadLatestUpgradeRequestFromDb()
{
  CTxDB db("r");

  CUpgradeRequest ur;
    
  //it may fail is there are no upgrade requests to process
  if(!db.ReadLatestUpgradeRequest(ur))
    return;

  ur.loadPropTx(db);
    
  {
    LOCK(currUpgradeRequest);

    currUpgradeRequest = ur;
  }
}

void AddUpgradeRequest(int blockHeight, propHash


void ThreadMaint(void* parg)
{
  while(!fShutdown)
    {
      //we just spin lock like a lazy Sunday in the country...
      Sleep(10000);

      //check for upgrades
      {
	LOCK(currUpgradeRequest)
	{
	  if(currUpgradeRequest.version > CLIENT_VERSION)
	    {
	      printf("*** An upgrade of the client MUST be performed.\n");

	      timestamp_t timeLeft = currUpgradeRequest.upgradeDeadline - GetAdjustedTime();

	      if(timeLeft > 0)
		{
		  printf("*** You have %ld seconds before deadline expires on %s"
			 "*** Afterwards, client will shutdown and refuse to start.\n",
			 timeLeft,
			 DateTimeStrFormat(currUpgradeRequest.upgradeDeadline).c_str());
		}
	      
	      printf("New version #:   %20d\n"
		     "Deadline:        %20s\n"
		     "Source git hash: %20s\n"
		     "Proposal Addr:   %20s\n"
		     "Proposal Title:  %20s\n"
		     currUpgradeRequest.upgradeVersion,
		     DateTimeStrFormat(ur.upgradeDeadline).c_str(),
		     std::string(ur.upgradeGitCommit.begin(), ur.upgradeGitCommit.end()).c_str(),
		     CProposalAddr(currUpgradeRequest.propHash),
		     GetPropTitle(currUpgradeRequest.propTx));
	      
	      if(ur.upgradeDeadline < (uint64)GetAdjustedTime())
		{
		  printf("*** Deadline has expired. Will shutdown now\n");
		  StartShutdown();

		  //TODO 2 pop up dialog for QT
		  return;
		}
	    }
	}
      }
    }
}


