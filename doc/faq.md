# Frequently Asked Questions

## How can i run the client with `someoption=XXX`?

You can either run the client with this option directly on the command line (`./neucoind -someoption=XXX`) or, if you want a more permanent solution, you may put this option in the coin configuration file (which is located inside a folder inside your home directory).

## What is a "RPC request"?

A RPC ("Remote Procedure Call") is a way to perform low-level operations on a running node. You can send RPC requests using either the command line, or the debug window (Qt client only).

## Can i mine Proof-of-Work blocks with the client?

Just don't. If you really must, launch the client with `gen=1`, but really, don't. The embedded miner is extremely inefficient, and should only be used for testing purposes.

## How can i disable stake generation?

Run the client with `stakegen=0`. Note that you won't mint anything as long as this option is set.

## How can i allow someone to mint for me without them being able to actually spend my coins?

What you're looking for is called "cold minting". The procedure for this to work is a bit complicated:

  - First, you have to generate an address; we will call it the "minting address".

    ```
    $> ./neucoind getnewaddress
    NYhZozScFVduMdnr4e4mFtXUq1cHCTV2hb
    ```

  - You then have to generate an other address; we will call it the "spending address".

    ```
    $> ./neucoind getnewaddress
    NZU5HdPdGCFCrp8KUt8kHzcSZEBn52kxBe
    ```

  - Uses the `addcoldmintingaddress` RPC command to merge the minting and spending addresses together (be careful about the order of the two parameters! Otherwise, you could lock yourself out of your coins).

    ```
    $> ./neucoind addcoldmintingaddress NYhZozScFVduMdnr4e4mFtXUq1cHCTV2hb NZU5HdPdGCFCrp8KUt8kHzcSZEBn52kxBe
    n5vK9Y281WtKMvm7YT6T9ktfsR6JzVCH9S
    ```

  - You will obtain a new address. Transfer some funds on it as you wish (this adress will still count toward your balance, and you will be able to spend its fund as usual).

    ```
    $> ./neucoind sendtoaddress n5vK9Y281WtKMvm7YT6T9ktfsR6JzVCH9S 100
    5c3fe069bdde68b5d1eed7d661a7cde7eb9a2c74fafdf80e41ee99d884caa975
    ```

  - Finally, export the minting address private key using `dumpprivkey`, and send it to whoever you want to be able to mint for you, along with both the minting address and the spending address.

    ```
    $> ./neucoind dumpprivkey NYhZozScFVduMdnr4e4mFtXUq1cHCTV2hb
    8kzz5nUifCMZf75HgMJTAdNvZFSyKrnJ9cooVeYBfBezLGvb37nP
    ```

This person will then have to do the following on their side:

  - First, they will import the minting address private key in their wallet, using `importprivkey`.

    ```
    $> ./neucoind importprivkey 8kzz5nUifCMZf75HgMJTAdNvZFSyKrnJ9cooVeYBfBezLGvb37nP
    ```

  - Then they will register the coldminting adress, using `addcoldmintingaddress` (the addresses they will pass as parameters have to be in the same order than in the first step, and they will get the same output).

    ```
    $> ./neucoind addcoldmintingaddress NYhZozScFVduMdnr4e4mFtXUq1cHCTV2hb NZU5HdPdGCFCrp8KUt8kHzcSZEBn52kxBe
    n5vK9Y281WtKMvm7YT6T9ktfsR6JzVCH9S
    ```

  - That's all! They will now be able to mint your coins, but not to spend them (the coldminting balance will be show in the `mintingonly` field from the `getinfo` RPC call). Should you want to stop (and get your coins back), create raw transactions from the utxo belonging to the coldminting address, and transfer the coins on another address.
