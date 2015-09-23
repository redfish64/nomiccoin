#pragma once

#include "types.h"

money_t GetProofOfStakeReward(timestamp_t coinAge, blockheight_t height);

#define ONE_YEAR_ONE_COIN_AGE ( 365 * 33 + 8) / 33

