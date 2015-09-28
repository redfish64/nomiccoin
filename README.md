This is a neucoin fork with a few additional features:

* Displays minting status at the progress bar at the bottom of the qt client
* Provides the new rpc call, "getmintingstatus" which displays several items of interest related to minting
* Provides a new command line option/neucoin.conf file parameter, noSplitMaxCombine=(1 or 0), which makes minting more efficient. Specifically, it prevents coins from splitting into multiple UTXO's, and automatically combines separated UTXO's during mint. See below for more information on this.
* Provides a new command line option/neucoin.conf file parameter, manualTimeOffsetSec=(value) which manually adjusts the clock of the neucoind. This is useful if you are cold minting on another person's machine with a incorrect clock

Tips can be sent here: Na64nCSDrxJtsPxs3rf5KbpTgYeaBYn2s3 Thanks!


![](http://i.imgur.com/D94pm7Y.png)

![](http://i.imgur.com/RZHXNQd.png)

RUNNING:

This is a drop in replacement of neucoin-qt.exe, and will read your wallet directly.

1. Backup your wallet!!!
2. Shutdown neucoin-qt.exe
3. Run redfish-neucoin-qt.exe

---

The information displayed in the bottom status bar is the same as from the "getmintingstatus" call. Here is a description of each element.

mintingStatus: 
  * "OK" - minting
  * "NOT MINTING" - wallet is locked or coins or not configured to mint
  * "INIT" - initialization before minting starts, should take a few seconds to leave this state.

minting: the coins that have passed their stake age and are currently minting. Coins may not be minting for any number of reasons, but in general its because they haven't reached the minimum 1.6 day stake age

currUnclaimedReward: this is the interest earned if all the UTXO's staked immediately. This corresponds to how much you'll lose if you transfer your coins to another address (even if you send them to another address in your own wallet)

mintingExpStakeDays: The average time in days until you'll earn your reward for the coins that are CURRENTLY minting. This depends on the number of coins you own and the amount of minting that is being done by others in the network

totalExpStakeDays: The average time in days until you'll earn your reward for ALL your coins. This lets you know what to expect after the 1.6 staking period has finished and you can mint your coins.

hoursForAllCoinsToStartMinting: In the case that the minimum stake age hasn't been reached, this is the number of hours before it will be reached

currAPY: The current interest rate per year. This will slowly reduce from 100% down to 6% at the end of 10 years.

blocks: the total block height of the blockchain. 

mintingNumUTXO: the total number of Unspent Transaction Outputs you are minting with. This is very important and should be minimized, ideally one per address, and only one address minting (see below)

totalNumUTXO: the total number of Unspent Transaction Outputs you have in your wallet. 

eligibleBalance: the total coins eligible for minting. This lets you know how many coins are minting including cold minting addresses.

noSplitMaximumCombineFlag: status of this flag. See below for more info

---

Why are UTXO's so important (and what are they)?

A UTXO in the context of minting is basically a transaction to an address in your wallet. So, for example, if you got paid 3 times in March, one for 100 NEU, another for 200 NEU, and a third for 150 NEU, all to the same address, they'd all be different UTXO's. Wallets contain addresses and addresses contain UTXO's.

Minting is done at the (very granular) UTXO level. So consider if you had 100,000 NEU in a single UTXO. Let's say at this level, you'd normally mint on average every 10 days. Now compare that to a case, where you still had 100,000 NEU in an address, but it was made with 5 payments of 20,000 each. Each UTXO corresponding to the payments would then mint on average every 50 days. On average, though, you'd still mint every 10 days. So why does this matter?

*Because you only get interest for the UTXO that coinstaked*. The others are left untouched (except in very unusual cases). So what happens is that a majority of your reward is left unclaimed (around 4/5ths of it in this case), and its difficult to move the coins without destroying the unclaimed reward of all the UTXO's that didn't mint. You can specify an address to send from in a transfer, but you cannot specify a specific UTXO!

Not only that, but this ties directly to how much compound interest you receive. After all, if you are only enjoying 1/5th of the reward you would with a single UTXO, then you are also only getting 1/5th of the interest due to the compounding.

See the discussion here http://forum.neucoin.org/t/interesting-tidbits-learned-from-reading-neucoins-source-code/1640 for more info.

What is the noSplitMaximumCombineFlag?

This flag changes the way that neucoin handles rewards, to make minting more efficient. If you enable this flag, you don't need to worry about UTXO's anymore. The program will take care of minimizing them for you.

In the original code, neucoin will automatically split up the coins at the minting address into two UTXO's every time a reward is received. This will continue over and over again, until your address ends up with UTXO's that only mint once every 90 days, and at the point, it will stop doing this. This code wasn't added by the neucoin team, and was part of the original peercoin code. I'm not sure the reason for this, and it really harms your profits after a long enough period of time, hence I created this flag.

The other thing this flag does is combine all the UTXO's in your address into a single one at the time you mint. So it won't matter if you send neu in several payments to your address, or in one payment all at once. Without this flag, it would be more efficient to send them all at once.

** If any one can shed some more light onto why Peercoin was programmed this way (as Neucoin inherits from Peercoin), please let me know!!! **

The information at the bottom of the window gets cut off. How do I see all the data?

The same information displayed at the bottom of the screen can be accessed in the debug console with the command "getmintingstatus". 

To reach the debug console, go to Help/Debug Window and click the "Console" tab. Then type "getmintingstatus" to see the full information.

---

Thanks!

Questions / Suggestions can be sent to engler@gmail.com , or create an Issue in the far right menu on github.

I'll try to respond if I'm not too busy

(The original readme is below)

---


![](http://i.imgur.com/5P9mGCc.png)

[Neucoin](http://neucoin.org/) (abbreviated NEU) aims to be the leading [cryptocurrency](https://en.wikipedia.org/wiki/Cryptocurrency) focused on using a [proof-of-stake consensus](http://en.wikipedia.org/wiki/Proof-of-stake) (first introduced by [Peercoin](https://github.com/ppcoin/ppcoin)) as a security model, with a combined [proof-of-stake](http://en.wikipedia.org/wiki/Proof-of-stake)/[proof-of-work](https://en.wikipedia.org/wiki/Proof-of-work_system) minting system. Neucoin is based on [Peercoin](http://peercoin.net/), itself based on [Bitcoin](http://bitcoin.org/en/), while introducing many important innovations to cryptocurrency field including new security model, energy efficiency, better minting model and more adaptive response to rapid change in network computation power.

## Neucoin Resources

  * [Source Code](https://github.com/neucoin/neucoin)
  * [Whitepaper](http://www.neucoin.org/en/whitepaper/)
  * [Forum](http://forum.neucoin.org/)

# Usage

Please check the [doc](https://github.com/neucoin/neucoin/blob/master/doc/) directory for more information, including how to compile the client.

# Repo Guidelines

  * Developers work in their own forks, then submit pull requests when they think their feature or bug fix is ready.
  * If it is a simple/trivial/non-controversial change, then one of the development team members simply pulls it.
  * If it is a more complicated or potentially controversial change, then the change may be discussed in the pull request, or the requester may be asked to start a discussion on [our forums](http://forum.neucoin.org/) for a broader community discussion.
  * The patch will be accepted if there is broad consensus that it is a good thing. Developers should expect to rework and resubmit patches if they don't match the project's coding conventions (see coding.txt) or are controversial.
  * From time to time a pull request will become outdated. If this occurs, and the pull is no longer automatically mergeable, a comment on the pull will be used to issue a warning of closure. Pull requests closed in this manner will have their corresponding issue labeled 'stagnant'.
  * No pull request will be merged as long as it breaks the functional tests (Travis will run on every pull request).
