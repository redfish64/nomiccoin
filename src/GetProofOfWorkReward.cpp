#include "constants.h"
#include "types.h"

#include "GetProofOfWorkReward.h"

money_t GetProofOfWorkReward(blockheight_t prevHeight)
{
    if (prevHeight == 0 && COIN_PREMINE > 0)
        return COIN_PREMINE;

    if (prevHeight < POW_DUMMY_BLOCK_COUNT)
        return MIN_TX_FEES;

    if (prevHeight >= POW_MAX_BLOCK)
        return MIN_TX_FEES;

    return POW_BLOCK_REWARD;
}
