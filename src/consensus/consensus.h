#ifndef BLOCKDAGCOIN_CONSENSUS_CONSENSUS_H
#define BLOCKDAGCOIN_CONSENSUS_CONSENSUS_H

// BlockDagCoin consensus parameters
static const unsigned int MAX_BLOCK_SERIALIZED_SIZE = 4000000;
static const unsigned int MAX_BLOCK_WEIGHT = 4000000;
static const unsigned int MAX_BLOCK_SIGOPS_COST = 80000;
static const int COINBASE_MATURITY = 100;

// Block reward parameters
static const int64_t INITIAL_BLOCK_REWARD = 5000 * COIN;
static const int64_t SUBSIDY_HALVING_INTERVAL = 210000;

// Flags for nSequence and nLockTime locks
enum {
    LOCKTIME_VERIFY_SEQUENCE = (1 << 0),
    LOCKTIME_MEDIAN_TIME_PAST = (1 << 1),
};

#endif // BLOCKDAGCOIN_CONSENSUS_CONSENSUS_H
