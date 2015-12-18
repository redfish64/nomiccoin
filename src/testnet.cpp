#include <cstring>
#include <string>

#include <boost/assign/list_of.hpp>

#include "constants.h"
#include "testnet.h"

static uint8_t      TESTNET_PROTOCOL_MAGIC_BYTES[sizeof(PROTOCOL_MAGIC_BYTES)] = { 0xe5, 0xcf, 0x81, 0xdf };

static char const * TESTNET_AUTO_DNS_SEEDS[][2]                                = { { "t-seed-a", "t-seed-a.nomiccoin.org" }, { 0, 0 } };
static uint32_t     TESTNET_AUTO_IP_SEEDS[]                                    = { 0 };

void ApplyTestnetParameters(void)
{
    COIN_PORT                  = 8742;
    RPC_PORT                   = 8743;

    std::memcpy(PROTOCOL_MAGIC_BYTES, &TESTNET_PROTOCOL_MAGIC_BYTES, sizeof(PROTOCOL_MAGIC_BYTES));

    AUTO_DNS_SEEDS             = TESTNET_AUTO_DNS_SEEDS;
    AUTO_IP_SEEDS              = TESTNET_AUTO_IP_SEEDS;

    PUBKEY_ADDRESS_PREFIX      =  65; // 'T'
    PRVKEY_ADDRESS_PREFIX      =  68; // 'U'
    SCRIPT_ADDRESS_PREFIX      = 127; // 't'

    GENESIS_MERKLE_HASH        = hash_t("79f80fcf39b37d4403066ee16f33d7e2349a641c905b48fcbcc2533d33e0bda6");
    GENESIS_HASH               = hash_t("00148aaab24ed309efad7f9ceab687c3dd568e962a7c0fe4aed825da97877c56");
    GENESIS_IDENT              = "And I moved upon the face of the darkness. And I saw that I was alone. Let there be light.";
    GENESIS_TX_TIME            = 1345084287;
    GENESIS_BLOCK_TIME         = 1345084287;
    GENESIS_BLOCK_NONCE        = 2179984344;
    GENESIS_BLOCK_VERSION      = 1;

    STAKE_MODIFIER_CHECKPOINTS = boost::assign::map_list_of(0, 0xfd11f4e7);

    POW_MAX_BLOCK              = std::numeric_limits< blockheight_t >::max();

    COIN_PREMINE               = 1000000 * COIN;

    POW_INITIAL_TARGET         = target_t(~uint256(0) >> 10);
    POS_INITIAL_TARGET         = target_t(~uint256(0) >> 10);

    POW_MAX_TARGET             = target_t(~uint256(0) >> 10);
    POS_MAX_TARGET             = target_t(~uint256(0) >> 10);

    TARGET_SPACING         =  10 * SECOND;
    
    //POW_BLOCK_REWARD           = 1 * COIN;

    POW_DUMMY_BLOCK_COUNT      = 0;

    STAKE_MIN_AGE              = 138240 * SECOND / 2;
    STAKE_MAX_AGE              = 138240 * SECOND / 2;

    MODIFIER_INTERVAL_BASE     = 200 * MINUTE / 2;
    TARGET_TIMESPAN            = 1 * HOUR ;

    BLOCK_CHECKPOINTS          = boost::assign::map_list_of(0, GENESIS_HASH);

    COINBASE_MATURITY           = 10;

}
