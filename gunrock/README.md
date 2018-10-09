```
sudo apt install libboost-all-dev
sudo apt install libmetis-dev
git clone --recursive https://github.com/gunrock/gunrock/
cd gunrock
mkdir build
cd build
cmake ..
make -j$(nproc)
make test
```

Binary files are available in build/bin subdirectory. You can run graph algorithms, such as bfs, pr(pagerank), hits,
salsa, etc. with gunrock. The graph type input can be R-MAT Graph, Random Geometry Graph
(rgg), or in Matrix-Market Coordinate-Formatted Graph.

There is a dataset subdirectory which provides several datasets in Matrix-Market format. Under the
dataset/small subdirectory, there are some graph datasets for testing graph primitives which are
ready to use. Under the dataset/large subdirectory, there are some datasets which you should first
download them (by just typing make).
