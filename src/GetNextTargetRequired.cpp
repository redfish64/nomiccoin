#include <inttypes.h>

#include "constants.h"
#include "main.h"
#include "types.h"

#include "GetNextTargetRequired.h"

compact_target_t GetNextTargetRequired(CBlockIndex const * pindexTail0, bool fProofOfStake)
{
  target_t initialTarget = fProofOfStake ? POS_INITIAL_TARGET : POW_INITIAL_TARGET;

    if (pindexTail0 == NULL)
        return initialTarget.GetCompact(); // genesis block

    CBlockIndex const * pPosIndexTail1 = GetLastBlockIndex(pindexTail0, true);

    if (pPosIndexTail1->pprev == NULL)
        return initialTarget.GetCompact(); // first block

    CBlockIndex const * pPosIndexTail2 = GetLastBlockIndex(pPosIndexTail1->pprev, true);

    if (pPosIndexTail2->pprev == NULL)
        return initialTarget.GetCompact(); // second block

    timestamp_t posActualSpacing = pPosIndexTail1->GetBlockTime() - pPosIndexTail2->GetBlockTime();
    timestamp_t actualSpacing = posActualSpacing;
    target_t currentTarget = CBigNum().SetCompact(pPosIndexTail1->nBits);
    
    if(!fProofOfStake)
      {
	//if pos is going too slow, we let pow take over until it speeds up again
	//otherwise, POW is not allowed
	//This may happen due to too many minters being in the 1.6 days to mint zone.
	if(posActualSpacing < TARGET_SPACING_LIFTOFF)
	  return 0;

	//note that it may be a very long time since the last proof of work, but thats
	//ok, because we'll just return maxTarget in that case (or initialTarget if no
	//proof of work happened at all yet)
	CBlockIndex const * pindexTail1 = GetLastBlockIndex(pindexTail0, false);

	if (pindexTail1->pprev == NULL)
	  return initialTarget.GetCompact(); // first block

	CBlockIndex const * pindexTail2 = GetLastBlockIndex(pindexTail1->pprev, false);

	if (pindexTail2->pprev == NULL)
	  return initialTarget.GetCompact(); // first block

	actualSpacing = pindexTail0->pprev->GetBlockTime() - pindexTail1->pprev->GetBlockTime();

	target_t currentTarget = CBigNum().SetCompact(pindexTail1->nBits);
      }
    
    timestamp_t targetSpacing = TARGET_SPACING;
    timestamp_t targetInterval = TARGET_TIMESPAN / targetSpacing;

    // ppcoin: target change every block
    // ppcoin: retarget with exponential moving toward target spacing

    target_t newTarget = currentTarget;

    newTarget *= ((targetInterval - 1) * targetSpacing + actualSpacing + actualSpacing);
    newTarget /= ((targetInterval + 1) * targetSpacing);

    target_t maxTarget = fProofOfStake ? POS_MAX_TARGET : POW_MAX_TARGET;

    if (newTarget > maxTarget)
        newTarget = maxTarget;

    //printf("Expecting: %llis Actual: %llis Old Difficulty: %x New Difficulty: %x (%s)\n", targetSpacing, actualSpacing, currentTarget.GetCompact(), newTarget.GetCompact(), fProofOfStake ? "PoS" : "PoW");

    return newTarget.GetCompact();
}
