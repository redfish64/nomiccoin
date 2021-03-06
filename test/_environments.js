export var fastChain = {
    GENESIS_MERKLE_HASH        : `hash_t("0x2de1e774c4fc075a18c7292f6f605125810a1b7e3c8fbf854bc28a2200f44005")`,
    GENESIS_HASH               : `hash_t("0x52dbecaee91b3468c5874bbaa912d44a4284ed8ab99a8ca454bca70e271876f1")`,
    GENESIS_TIME               : `1345084287`,
    GENESIS_NONCE              : `2179983835`,

    BLOCK_CHECKPOINTS          : `boost::assign::map_list_of(0, GENESIS_HASH)`,
    STAKE_MODIFIER_CHECKPOINTS : `boost::assign::map_list_of(0, 0x0e00670b)`,

    POW_MAX_BLOCK              : `std::numeric_limits<blockheight_t>::max()`,

    POW_INITIAL_TARGET         : `target_t(~uint256(0))`,
    POS_INITIAL_TARGET         : `target_t(~uint256(0))`,

    POW_MAX_TARGET             : `target_t(~uint256(0))`,
    POS_MAX_TARGET             : `target_t(~uint256(0))`,

    POW_TARGET_SPACING         : `1 * SECOND`,
    POS_TARGET_SPACING         : `1 * SECOND`,

    STAKE_MIN_AGE              : `0 * SECOND`,
    STAKE_MAX_AGE              : `0 * SECOND`,

    STAKE_COIN_STEP            : `1`,
    STAKE_AGE_STEP             : `1`,

    COINBASE_MATURITY          : `1`,

    PROPOSAL_MATURITY_BLOCKS   : `15`,
    CHECKPOINT_MATURITY_BLOCKS   : `15`,
    MIN_PROPOSAL_DEADLINE_TIME : `1`  
};

export var mediumFastChain = {

    GENESIS_MERKLE_HASH        : `hash_t("0x6cc1b3157225af10b4a9463c781500e42edfdd838552258c022c64a43bfeede4")`,
    GENESIS_HASH               : `hash_t("0xa23c0f252952dab41e98ba678a73f1844c872bd39d57df7851a01da3f112fb94")`,
    GENESIS_TIME               : `1441976184`,
    GENESIS_NONCE              : `172958`,

    BLOCK_CHECKPOINTS          : `boost::assign::map_list_of(0, GENESIS_HASH)`,
    STAKE_MODIFIER_CHECKPOINTS : `boost::assign::map_list_of(0, 0xfd11f4e7)`,

    POW_INITIAL_TARGET         : `target_t(~uint256(0))`,
    POS_INITIAL_TARGET         : `target_t(~uint256(0))`,

    POW_MAX_TARGET             : `target_t(~uint256(0))`,
    POS_MAX_TARGET             : `target_t(~uint256(0))`,

    POW_TARGET_SPACING         : `6 * SECOND`,
    POS_TARGET_SPACING         : `6 * SECOND`,

    STAKE_MIN_AGE              : `0 * SECOND`,
    STAKE_MAX_AGE              : `0 * SECOND`,

    TARGET_SPACING_LIFTOFF     : `0 * SECOND`,

    TARGET_TIMESPAN            : `1 * MINUTE`,

    COINBASE_MATURITY          : `1`

};

export var withMinStakeAgeChain = {

    GENESIS_MERKLE_HASH        : `hash_t("0xdca31aacad33f707c716747c1e23f6bcfb3c14e38fadabd357ac0ea9a2245e4c")`,
    GENESIS_HASH               : `hash_t("0x429c4c247ed08dd13e0020edd15ddcd0d2cda5694856a8ad4f31ffda4ff75a67")`,
    GENESIS_TIME               : `1444122312`,
    GENESIS_NONCE              : `2182928`,
	NULL_PROPOSAL_TXN_HASH     : `hash_t("0x5b355afb7afc7f8b4ad47354d524046ced5e3953a5dc8561dc4848aa1ee76cbb")`,

    BLOCK_CHECKPOINTS          : `boost::assign::map_list_of(0, GENESIS_HASH)`,
    STAKE_MODIFIER_CHECKPOINTS : `boost::assign::map_list_of(0, 0x0e00670b)`,

    POW_MAX_BLOCK              : `std::numeric_limits<blockheight_t>::max()`,

    POW_INITIAL_TARGET         : `target_t(~uint256(0))`,
    POS_INITIAL_TARGET         : `target_t(~uint256(0))`,

    POW_MAX_TARGET             : `target_t(~uint256(0))`,
    POS_MAX_TARGET             : `target_t(~uint256(0))`,

    POW_TARGET_SPACING         : `1 * SECOND`,
    POS_TARGET_SPACING         : `1 * SECOND`,

    STAKE_MIN_AGE              : `60 * SECOND`,
    STAKE_MAX_AGE              : `60 * SECOND`,

    STAKE_COIN_STEP            : `1`,
    STAKE_AGE_STEP             : `1`,
    TARGET_SPACING_LIFTOFF     : `0 * SECOND`,

    COINBASE_MATURITY          : `1`,

    PROPOSAL_MATURITY_BLOCKS   : `15`
};

export var smallChain = {

    COIN_PREMINE          : `0 * COIN`,

    POW_DUMMY_BLOCK_COUNT : `0`,

    POW_BLOCK_REWARD      : `1 * COIN`,
    POS_BLOCK_REWARD      : `1 * COIN`,

    MIN_TX_FEES           : `0 * COIN`,
    MIN_RELAY_TX_FEES     : `0 * COIN`

};
