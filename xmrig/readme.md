```
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
git clone https://github.com/xmrig/xmrig-nvidia.git
cd xmrig-nvidia
mkdir build
cd build
cmake ..
make
```

You should write config.json file with the help of this site https://config.xmrig.com, and put it in the build subdirectory.

User and Url in the config.json file should be replaced by your Monero user and wallet address. You can build a wallet in this site https://mymonero.com/#/.

If you are GPU mining using xmrig then editing the thread setting is essential in which by tweaking you can expect optimal mining performance. You can also change safe setting to true which makes xmrig auto sets to optimal settings for threads.
