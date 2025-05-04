#ifndef BLOCKDAGCOIN_AMOUNT_H
#define BLOCKDAGCOIN_AMOUNT_H

#include <stdint.h>

typedef int64_t CAmount;

static const CAmount COIN = 100000000;
static const CAmount CENT = 1000000;

// 150 billion BDAG maximum supply
static const CAmount MAX_MONEY = 150000000000 * COIN;

inline bool MoneyRange(const CAmount& nValue) { 
    return (nValue >= 0 && nValue <= MAX_MONEY); 
}

#endif // BLOCKDAGCOIN_AMOUNT_H
