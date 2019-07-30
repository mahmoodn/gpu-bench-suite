Download
```
git clone --recursive git@github.com:clara-genomics/ClaraGenomicsAnalysis.git
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install
make -j install
```
Run
```
cd build/install/benchamrk/cudapoa
./singlebatch --benchmark_filter=BM_SingleBatchTest/64
```
