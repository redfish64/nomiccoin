<h1>NomicCoin</h1>

NomicCoin is a Proof-of-Stake based coin, with voting and a shared pool of funds integrated into the protocal.

Users can create proposals which can:

* Force official client to upgrade
* Spend a shared pool of funds
* A non binding poll that determines the support of a given idea.

Proposals can then be voted on by owners of NomicCoin. One coin equals one vote.
If a proposal passes with greater than 50% of the voting public, then the proposal will be run automatically by the network.

The idea comes from the alt-coin TauChain (which is still in development) and the game, Nomic, which is a rule making game, where players are allowed to change the rules of the game while playing it.

It's more of an experiment than anything else.

<h2>Idea</h2>

The idea is to basically model a cryptocurrency to be like a democratic government or country.

This is done as follows:

Taxes are collected and stored in a central pool of funds (denominated in NomicCoin).

Owners of the coin make proposals and vote on proposals of others. Passed proposals can spend funds and change the rules (laws) of the system.

The code for this somewhat crude and simple, but that doesn't really matter, because NomicCoin is an evolving coin. As it progresses, developers can be paid by the community to improve the coin. An example of this process would be as follows:

* A developer has an idea to improve NomicCoin.
* The developer creates a non-binding poll to find out if the NomicCoin community supports his idea, and if so, a price they are willing to pay
* If the poll shows that a majority would be willing to pay for the change, the developer goes ahead and implements it.
* Finally, the developer creates a proposal for payment to himself. Once the proposal passes, the developer releases the code
* A proposal is made to upgrade the code to the official version. Once that passes, the client will prompt the user to upgrade

What happens if the community decides not to pay up? Or the developer never releases the updated code? This is a case where the buyer must beware. If the community refuses to pay for services rendered and doesn't have a good reason to, then future developers may be wary to work NomicCoin. On the flip side, if the community did not do enough research into the developer they hired, and he fails to produce, they take the loss.

<h2>Specifics</h2>

NomicCoin is based on the Neucoin source code. It adds the following rpc calls

<h3>createproposal</h3>

This creates a proposal which can be voted on by the community.
...

vote
...





<h2>Questions</h2>

<h3>Why Proof of Stake?</h3>

Proof of work causes problems when combined with the ability to vote. If the miners don't like a proposal,
they could refuse any vote transactions that vote for it, and it would never pass.

With Proof of Stake, the minters also own coins. So if a 51 % of coin owners want a proposal to pass,
then, since minters and coin owners are from the same group, it follows that 51 % of minters would
also want the proposal to pass. Because so, there is always a group of minters large enough who's
best interest would be to calculate the 

<h3>Why NeuCoin?</h3>

I initially liked NeuCoin. They have an informative white paper on why the changes they've made to Peercoin are valuable, and I tend to agree with it.

After their main developer left, I'm no longer so enthusiatic about them. But I still like the changes they did.

<h3>Why not Tauchain?</h3>