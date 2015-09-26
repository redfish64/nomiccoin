This is a neucoin fork with a few additional features:

* Displays minting status at the progress bar at the bottom of the qt client
* Provides the new rpc call, "getmintingstatus" which displays several items of interest related to minting
* Provides a new command line option/neucoin.conf file parameter, manualTimeOffsetSec=<value> which manually adjusts the clock of the neucoind. This is useful if you are cold minting on another person's machine with a incorrect clock

![](http://imgur.com/zM6rdx6.png)

The following information is displayed in the progress bar as well as from the getmintingstatus call

minting: this is the total number of coins currently minting. Coins may not be minting for any number of reasons, but in general its because they haven't reached the minimum 1.6 day stake age

currUnclaimedReward: this is the interest earned if all the UTXO's staked immediately. This corresponds to how much you'll lose if you transfer your coins to another address (even if you send them to another address in your own wallet)

hoursForAllCoinsToStartMinting: In the case that the minimum stake age hasn't been reached, this is the number of hours before it will be reached

currAPY: The current interest rate per year. This will slowly reduce from 100% down to 6% at the end of 10 years.

expStakeDays: The average time in days until the next stake. This depends on the number of coins you own and the amount of minting that is being done by others in the network

numUTXO: the total number of Unspent Transaction Outputs you have in your wallet. This is very important and should be minimized, ideally one per address, and only one address minting (see below)

---

Why are UTXO's so important (and what are they)?

A UTXO in the context of minting is basically a transaction to an address in your wallet. So, for example, if you got paid 3 times in March, one for 100 NEU, another for 200 NEU, and a third for 150 NEU, all to the same address, they'd all be different UTXO's. Wallets contain addresses and addresses contain UTXO's.

Minting is done at the (very granular) UTXO level. So consider if you had 100,000 NEU in a single UTXO. Let's say at this level, you'd normally mint on average every 10 days. Now compare that to a case, where you still had 100,000 NEU in an address, but it was made with 5 payments of 20,000 each. Each UTXO corresponding to the payments would then mint on average every 50 days. On average, though, you'd still mint every 10 days. So why does this matter?

*Because you only get interest for the UTXO that coinstaked*. The others are left untouched (except in very unusual cases). So what happens is that a majority of your reward is left unclaimed (around 4/5ths of it in this case), and its difficult to move the coins without destroying the unclaimed reward of all the UTXO's that didn't mint. You can specify an address to send from in a transfer, but you cannot specify a specific UTXO!

Not only that, but this ties directly to how much compound interest you receive. After all, if you are only enjoying 1/5th of the reward you would with a single UTXO, then you are also only getting 1/5th of the interest due to the compounding.

---

Tips can be sent here: Na64nCSDrxJtsPxs3rf5KbpTgYeaBYn2s3

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
