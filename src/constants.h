#pragma once

#include <limits>
#include <map>
#include <stdint.h>

#include "bignum.h"
#include "types.h"

#define COIN_NAME        "NomicCoin"
#define COIN_SLUG        "nomiccoin"
#define COIN_CLIENT_QT   "nomiccoin-qt"
#define COIN_CLIENT      "nomiccoind"
#define COIN_SCHEME      "nomiccoin"
#define COIN_DOMAIN      "nomiccoin.org"

#define COIN_UNIT        "NOM"
#define COIN_UNIT_M      "mNOM"
#define COIN_UNIT_U      "uNOM"

#define COIN_UNIT_NAME   "NomicCoins"
#define COIN_UNIT_NAME_M "Milli-" COIN_UNIT
#define COIN_UNIT_NAME_U "Micro-" COIN_UNIT

#define COIN_BUGTRACKER  "http://github.com/nomiccoin/nomiccoind/issues"

extern uint16_t                          COIN_PORT;
extern uint16_t                          RPC_PORT;

extern uint8_t                           PROTOCOL_MAGIC_BYTES[4];

extern char const *                     (*AUTO_DNS_SEEDS)[2];
extern uint32_t                         (*AUTO_IP_SEEDS);

extern uint8_t                           PUBKEY_ADDRESS_PREFIX;
extern uint8_t                           PRVKEY_ADDRESS_PREFIX;
extern uint8_t                           SCRIPT_ADDRESS_PREFIX;

extern hash_t                            GENESIS_MERKLE_HASH;
extern hash_t                            GENESIS_HASH;
extern char const *                      GENESIS_IDENT;
extern timestamp_t                       GENESIS_TX_TIME;
extern timestamp_t                       GENESIS_BLOCK_TIME;
extern uint32_t                          GENESIS_BLOCK_NONCE;
extern uint32_t                          GENESIS_BLOCK_VERSION;

extern std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS;
extern std::map<blockheight_t, uint32_t> STAKE_MODIFIER_CHECKPOINTS;

extern blockheight_t                     COINBASE_MATURITY;

extern money_t                           MAX_MONEY_STACK;
extern money_t                           COIN_PREMINE;

extern money_t                           MIN_TX_FEES;
extern money_t                           MIN_RELAY_TX_FEES;

extern timestamp_t                       MAX_CLOCK_DRIFT;

extern uint32_t                          MAX_BLOCK_SIZE;

extern blockheight_t                     POW_MAX_BLOCK;

extern blockheight_t                     POW_DUMMY_BLOCK_COUNT;

extern target_t                          POW_INITIAL_TARGET;
extern target_t                          POS_INITIAL_TARGET;

extern target_t                          POW_MAX_TARGET;
extern target_t                          POS_MAX_TARGET;

extern timestamp_t                       TARGET_SPACING;
extern timestamp_t                       TARGET_SPACING_LIFTOFF;

extern money_t                           POW_BLOCK_REWARD;
extern money_t                           POS_BLOCK_REWARD;

extern timestamp_t                       STAKE_MIN_AGE;
extern timestamp_t                       STAKE_MAX_AGE;

extern timestamp_t                       MODIFIER_INTERVAL_BASE;
extern uint32_t                          MODIFIER_INTERVAL_RATIO;

extern money_t                           STAKE_COIN_STEP;
extern timestamp_t                       STAKE_AGE_STEP;

extern uint64_t                          STAKE_COMBINE_THRESHOLD;
extern timestamp_t                       STAKE_SPLIT_AGE;

extern timestamp_t                       TARGET_TIMESPAN;

extern std::string                       CHECKPOINT_PUBLIC_KEY;
extern std::string                       CHECKPOINT_PRIVATE_KEY;

extern std::string                       CALERT_PUBLIC_KEY;

extern money_t                           MIN_TXOUT_AMOUNT;

extern uint32_t                          MAX_BLOCK_SIZE_GEN;
extern uint32_t                          MAX_BLOCK_SIGOPS;
extern uint32_t                          MAX_BLOCK_ORPHAN_TX;

extern double                            SHARED_POOL_MINTING_PERC;
extern double                            SHARED_POOL_MINING_PERC;

extern money_t GENESIS_SHARED_POOL_FUNDS;


extern int VOTE_REG_PERIOD_BLOCKS;
