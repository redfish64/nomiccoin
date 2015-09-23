// Copyright (c) 2012 The Bitcoin developers
// Copyright (c) 2012-2013 The PPCoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
#ifndef BITCOIN_VERSION_H
#define BITCOIN_VERSION_H

#include <string>

//
// versioning
//

#define COIN_VERSION_MAJOR      1
#define COIN_VERSION_MINOR      0
#define COIN_VERSION_REVISION   0
#define COIN_VERSION_BUILD      0

#define CLIENT_VERSION_MAJOR    COIN_VERSION_MAJOR
#define CLIENT_VERSION_MINOR    COIN_VERSION_MINOR
#define CLIENT_VERSION_REVISION COIN_VERSION_REVISION
#define CLIENT_VERSION_BUILD    COIN_VERSION_BUILD

extern const std::string CLIENT_NAME;
extern const std::string CLIENT_BUILD;
extern const std::string CLIENT_DATE;

static const int CLIENT_VERSION =
                           1000000 * CLIENT_VERSION_MAJOR
                         +   10000 * CLIENT_VERSION_MINOR
                         +     100 * CLIENT_VERSION_REVISION
                         +       1 * CLIENT_VERSION_BUILD;

static const int COIN_VERSION =
                           1000000 * COIN_VERSION_MAJOR
                         +   10000 * COIN_VERSION_MINOR
                         +     100 * COIN_VERSION_REVISION
                         +       1 * COIN_VERSION_BUILD;

//
// network protocol versioning
//

static const int PROTOCOL_VERSION = 60004;

// earlier versions not supported as of Feb 2012, and are disconnected
// NOTE: as of bitcoin v0.6 message serialization (vSend, vRecv) still
// uses MIN_PROTO_VERSION(209), where message format uses PROTOCOL_VERSION
static const int MIN_PROTO_VERSION = 209;

// nTime field added to CAddress, starting with this version;
// if possible, avoid requesting addresses nodes older than this
static const int CADDR_TIME_VERSION = 31402;

// only request blocks from nodes outside this range of versions
static const int NOBLKS_VERSION_START = 32000;
static const int NOBLKS_VERSION_END = 32400;

// BIP 0031, pong message, is enabled for all versions AFTER this one
static const int BIP0031_VERSION = 60000;

#endif
