```
sudo apt-get inatall cmake git mesa-common-dev
git clone https://github.com/ethereum-mining/ethminer
cd ethminer
git submodule update --init --recursive
mkdir build
cd build
cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF
sudo make install
```

Not only to get an idea of the MHash/s your setup reaches, but also because the correct hash rate is required to mine,
you have to run a benchmark first.
```
ethminer -U -M 0
```
Divide the “MAX” hashrate by 1000000 to get the rate in megahashes. This is your real hashrate in MH/s.

1. Visit the following web URL https://www.myetherwallet.com
2. Type a valid password and create a wallet to store Ether.
3. Now save the given Keystore file which contains relevant information of the wallet.
4. After it’s downloaded, proceed by clicking “I understand, Continue” button.
5. Save the Private Key. The Website lets users to print it on a paper too. Once the address is saved, proceed by
clicking “Save Your Address” button.
6. There are different ways to connect to different pools that are explained here https://github.com/ethereum-mining/ethminer/blob/master/docs/POOL_EXAMPLES_ETH.md.
The following command is an example of how to connect to a pool.
```
ethminer -U -P stratum1+tcp://ETH_WALLET@eth-eu.dwarfpool.com:8008
```
