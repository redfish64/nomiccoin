#include <limits>
#include <map>
#include <stdint.h>

#include <boost/assign/list_of.hpp>

#include "bignum.h"
#include "macros.h"
#include "types.h"

uint16_t                          COIN_PORT                   = 7744;
uint16_t                          RPC_PORT                    = 7745;

//                                These bytes are put at the beginning of every packet, and should be unique to a coin network
//                                They are designed to be unlikely to occur in normal data. The characters are rarely used upper ascii, not valid as UTF-8, and produce a large 4-byte int at any alignment

uint8_t                           PROTOCOL_MAGIC_BYTES[4]     = { 0xe1, 0xce, 0x81, 0xee };

//                                These parameters are used as initial nodes to connect to, from which we will get the other ones
//                                Each DNS pair gives a source name and a seed name. The first name is used as information source for addrman, and the second name should resolve to a list of seed addresses. The last element of each array has to be null (respectively { 0, 0 } and 0)
//                                A short note about the syntax : we have to use a pointer-to-array (rather than array-of-array-of-pointers) because we need to be able to reassign it later and change the array size (testnet). I'd like to improve that latter (and probably use a std::list instead)

//                                Nomiccoin-specific : "seed-a" & "seed-b" are full nodes, "seeds" is a seed server

static char const *               MAINNET_AUTO_DNS_SEEDS[][2] = {
  //{ "seed-a", "seed-a.rareventure.com" }, { "seed-b", "seed-b.rareventure.com" }, { "seeds", "seeds.for.rareventure.com" },
  { 0, 0 } };
static uint32_t                   MAINNET_AUTO_IP_SEEDS[]     = {  0xC0A82ADC, 0xC0A82ADD, 0 };

char const *                    (*AUTO_DNS_SEEDS)[2]          = MAINNET_AUTO_DNS_SEEDS;
uint32_t                        (*AUTO_IP_SEEDS)              = MAINNET_AUTO_IP_SEEDS;

//                                These numbers map in a very convoluted way to the first character of the address. Found by trial and error.

uint8_t                           PUBKEY_ADDRESS_PREFIX       =  34; // "E"
uint8_t                           PRVKEY_ADDRESS_PREFIX       =  95; 
uint8_t                           SCRIPT_ADDRESS_PREFIX       = 35; // "F"

//                                The following constants define the genesis block of the coin network
//                                If you change them, the hash will probably be wrong and the genesis invalid (because its hash would be higher than the initial target), and the client will try to generate a new valid genesis at startup
hash_t                            GENESIS_MERKLE_HASH         = hash_t("d5ab3e370e4a314b31784c05e184d87809646d06066d13a805ca9607eb5f08f0");
hash_t                            GENESIS_HASH                = hash_t("003fd1bc80732e49c38247bb47afcaf8b7c9f427a9b69ad5bfd7c0402fcd4d56");
char const *                      GENESIS_IDENT               = "And I moved upon the face of the darkness. And I saw that I was alone. Let there be light.";
timestamp_t                       GENESIS_TX_TIME             = 1345084287;
timestamp_t                       GENESIS_BLOCK_TIME          = 1345084287;
uint32_t                          GENESIS_BLOCK_NONCE         = 2179983835;
uint32_t                          GENESIS_BLOCK_VERSION       = 1;

hash_t NULL_PROPOSAL_TXN_HASH = hash_t("486471692b7748edcce4935766dfe2bf7edf65fd8cb9912cd157bcd5364a1c2d");


// std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS           = boost::assign::map_list_of(0, GENESIS_HASH)
//   (600, hash_t("0000002116c928d1b212578d6d13ada478bb22cc7f82c38a743ee6084d2690de"));
std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS           = boost::assign::map_list_of(0, GENESIS_HASH);
std::map<blockheight_t, uint32_t> STAKE_MODIFIER_CHECKPOINTS  = boost::assign::map_list_of(0, 0x0e00670b);

//                                The maturity is the number of block required for a coinbase/coinstake transaction to be confirmed by the network (excluding the block which embeds the transaction)
//                                Since you need to include your transaction in a block, and the COINBASE_MATURITY cannot be lower than 1, you will always need at least two blocks before maturing
//                                Note that the coinbase maturity is actually also applied to coinstakes. This constant should probably be renamed to reflect this fact
//The reason for this is that when a fork happens, usually transactions will appear in both forks until
//one wins, with exception to stake/coinbase, which can only exist in one fork. So we wait a number
//of blocks to hopefully resolve any long term forks.
blockheight_t                     COINBASE_MATURITY           = 500;

//                                Some parameters about the coin amount itself
//                                If you use a non-zero COIN_PREMINE value, the first mined PoW block will have this reward. Otherwise, it will be POW_BLOCK_REWARD as usual
//                                Note that MAX_MONEY_STACK doesn't prevent the coin amount from exceeding its value - ie. that it isn't a hard limit for how much money will the blockchain handle

money_t                           MAX_MONEY_STACK             = 500000000000u * COIN;
money_t                           COIN_PREMINE                =   1000 * 1000 * COIN;

//                                If you submit a transaction to the network, you need to put at least MIN_TX_FEES coins for the client to accept it
//                                You also need to put at least MIN_RELAY_TX_FEES, otherwise the other nodes will not relay it -

money_t                           MIN_TX_FEES                 = CENT * .001;
money_t                           MIN_RELAY_TX_FEES           = CENT * .001;

//                                The maximal amount of time drift allowed, after which the client will not accept old blocks

timestamp_t                       MAX_CLOCK_DRIFT             = 2 * HOUR;

//                                The maximal size of a block allowed by your coin network

uint32_t                          MAX_BLOCK_SIZE              = 1000000;

//                                Maximal number of PoW blocks, after which their reward become null
//                                You can use std::numeric_limits< blockheight_t >::max( ) to disable this parameter

blockheight_t                     POW_MAX_BLOCK              = std::numeric_limits< blockheight_t >::max();

//                                Initial network targets

target_t                          POS_INITIAL_TARGET          = target_t(~uint256(0) >> 20);
target_t                          POW_INITIAL_TARGET          = target_t(~uint256(0) >> 10);

// //                                Maximal network targets (after which mining/minting a block won't be easier)

target_t                          POS_MAX_TARGET              = target_t(~uint256(0) >> 20);
target_t                          POW_MAX_TARGET              = target_t(~uint256(0) >> 10);

//                                The average delay between two blocks

timestamp_t                       TARGET_SPACING          = 1 * MINUTE;

//                                If the last pos takes at least this long, then we let pow
//                                earn some money

timestamp_t                       TARGET_SPACING_LIFTOFF  = 5 * MINUTE;

//                                Reward for each PoW block mined, until we reach escape velocity
//                                PoW doesn't add any security so we don't make the reward very big
//                                We don't make the target very hard either, though
money_t                           POW_BLOCK_REWARD            = 1 * COIN;


//                                Number of blocks that will have a null reward (exactly 1 cent - we didn't want to risk anything by putting a zero reward) - useful if you want to delay the network until your premine is able to mint, but don't want to be rewarded for the new blocks (which would effectively give you an extra premine if they did)
//                                Note that this number includes the premine block, if any

blockheight_t                     POW_DUMMY_BLOCK_COUNT       = 0;

//                                Reward for each PoS block mined - should be IGNORED by GetProofOfStakeReward() if zero
//                                You probably don't want to use it in production, since it totally ignores the coinAge or any other parameter - it's only usage is for testing purposes only

money_t                           POS_BLOCK_REWARD            = 0;

//                                The delay required for a coin to stake, and the delay after which a coin won't get any more bonuses

timestamp_t                       STAKE_MIN_AGE               = 138240 * SECOND; // = 1.6 days, which is a bit higher than the stake modifier selection interval (1.56 days)
timestamp_t                       STAKE_MAX_AGE               = 138240 * SECOND;

//                                These variable define the amount of time a stake modifier spreads over. The BASE is the delay to compute the first bit of a modifier, and the RATIO is the multiplicator for the last bit.
//                                As many other things, these variables were very scarcely documented, so they might be inaccurate. Please open a PR to fix this comment if you understand them better than I.

timestamp_t                       MODIFIER_INTERVAL_BASE      = 200 * MINUTE;
uint32_t                          MODIFIER_INTERVAL_RATIO     = 18;

//                                When calculating the coinage, we use STAKE_COIN_STEP and STAKE_AGE_STEP to respectively divide the coin number and coin age

money_t                           STAKE_COIN_STEP             = 1 * COIN;
timestamp_t                       STAKE_AGE_STEP              = 1 * DAY;

//                                The client will try to aggregate multiple inputs when staking until the coin amount exceed the COMBINE_THRESHOLD
//                                Note that this number is a divider : the higher it is, the less coins will be combined in a single pass

uint64_t                          STAKE_COMBINE_THRESHOLD     = 3;

//                                The client will try to split the utxo as much as possible until they stake at most every STAKE_SPLIT_AGE
//                                You probably want to limit this variable to the STAKE_MAX_AGE, or you will end up losing compound interest (thanks timengler for the heads-up)

timestamp_t                       STAKE_SPLIT_AGE             = STAKE_MAX_AGE;

//                                The target doesn't change immediately to take the new work difficulty in account - it is actually spread over an amount of time, the TARGET_TIMESPAN

timestamp_t                       TARGET_TIMESPAN             = 2 * HOUR;

// -- You can use the -checkpointkey command line parameter to specify the private key. If you do this, and if the private key is correct, your client will start sending checkpoints regularly
// -- In order to generate a new valid checkpoint key, you have to use the `makekeypair` rpc command - don't try to generate it yourself

std::string                       CHECKPOINT_PUBLIC_KEY       = "047cc09d2fe1e20623b9c07fa1b6dba2d19307fe4e89984938def6f2d3c96093e3a3b4b1c1687cd06a862a7d801b76ae97ee3d690f420828aba2b832450538f475";
std::string                       CHECKPOINT_PRIVATE_KEY      = ""; // Do NOT set it here; use -checkpointkey instead

// -- The private key has to be specified when you use the sendalert rpc call. It doesn't have to be in the source code.

std::string                       CALERT_PUBLIC_KEY           = "046cad722ce2f38f6bd434d64423fc9613c7cb360dd4f957ae56f140a8c65882857c3436f3004733b56560e43e677744b557d471de132b48363fafcb0e18b8b0f6";

// -- These variables should probably not be modified, since they rely on the previous ones
// -- Don't forget that the testnet code also has to change them if it changes the variables they depend from

money_t                           MIN_TXOUT_AMOUNT            = MIN_TX_FEES;

uint32_t                          MAX_BLOCK_SIZE_GEN          = MAX_BLOCK_SIZE / 2;
uint32_t                          MAX_BLOCK_SIGOPS            = MAX_BLOCK_SIZE / 50;
uint32_t                          MAX_BLOCK_ORPHAN_TX         = MAX_BLOCK_SIZE / 100;

money_t GENESIS_SHARED_POOL_FUNDS_BALANCE = 1000 * COIN;

/**
   The portion that the funds pool gets for every minted and mined block.
 */
double                             SHARED_POOL_MINTING_PERC  = .25;
double                             SHARED_POOL_MINING_PERC   = .25;

/**
 * Coins that have voted for something within this time period will be used as the divisor to
 * figure if a proposal has passed. For example, if 10K coins have been involved in prior votes
 * over the vote registeration period, and 5,300 votes are for the proposal, then it would pass with
 * 5300/10000 = 53 %
 */
int VOTE_REG_PERIOD_BLOCKS = 2 * WEEK / TARGET_SPACING;

/**
 * Number of blocks before a proposal result becomes permenant and can be redeemed. We don't want to go 
 * about spending pool funds based on an election that might fork and go the other way.
 * 
 * The reason we're worried about the election forking is because even mined/staked coins can participate
 * in voting before they mature (this prevents a minter from losing their chance to vote simply because 
 * they staked at the wrong time). 
 * 
 * So for the same reason there is a coinbase/coinstake maturity, there is a proposal maturity. 
 */
int PROPOSAL_MATURITY_BLOCKS = 500;


int PROPOSAL_MESSAGE_PRESENCE_BLOCKS = 1 * WEEK / TARGET_SPACING;

//the minimum time a deadline can occur after a proposal has been entered into the blockchain
timestamp_t MIN_PROPOSAL_DEADLINE_TIME = 6 * HOUR;

//this is the maximum time that a deadline can be set after a proposal is entered into the blockchain
//It should always be less than VOTE_REG_PERIOD_BLOCKS, or it will be possible for voters to supercharge
//their vote by having it expired in the VOTE_REG_PERIOD_BLOCKS, but still before the deadline of the
//proposal (thereby being added to the numerator and not the denominator of the equation)
timestamp_t MAX_PROPOSAL_DEADLINE_TIME = 12 * DAY;

/**
 * The priority for proposals get multiplied by this value. (a greater value
 * means more likely to get in). In general, votes and proposals take first
 * priority, since votes are so important to a dynamic system such as nomiccoin
 */
double PROPOSAL_PRIORITY_MULTIPLIER = 100;

/**
 * Additional fee for sending proposals, because we don't want a million proposals
 * with bathroom scrawls all over them you damn kids
 */
money_t PROPOSAL_ADDITIONAL_FEE = 1*COIN;
