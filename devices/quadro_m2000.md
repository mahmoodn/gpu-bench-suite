1)

```
  CUDA Driver Version / Runtime Version          10.0 / 10.0
  CUDA Capability Major/Minor version number:    5.2
  Total amount of global memory:                 4041 MBytes (4236902400 bytes)
  ( 6) Multiprocessors, (128) CUDA Cores/MP:     768 CUDA Cores
  GPU Max Clock rate:                            1162 MHz (1.16 GHz)
  Memory Clock rate:                             3303 Mhz
  Memory Bus Width:                              128-bit
  L2 Cache Size:                                 786432 bytes
  Maximum Texture Dimension Size (x,y,z)         1D=(65536), 2D=(65536, 65536), 3D=(4096, 4096, 4096)
  Maximum Layered 1D Texture Size, (num) layers  1D=(16384), 2048 layers
  Maximum Layered 2D Texture Size, (num) layers  2D=(16384, 16384), 2048 layers
  Total amount of constant memory:               65536 bytes
  Total amount of shared memory per block:       49152 bytes
  Total number of registers available per block: 65536
  Warp size:                                     32
  Maximum number of threads per multiprocessor:  2048
  Maximum number of threads per block:           1024
  Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
  Max dimension size of a grid size    (x,y,z): (2147483647, 65535, 65535)
  Maximum memory pitch:                          2147483647 bytes
  Texture alignment:                             512 bytes
  Concurrent copy and kernel execution:          Yes with 1 copy engine(s)
  Run time limit on kernels:                     No
  Integrated GPU sharing Host Memory:            No
  Support host page-locked memory mapping:       Yes
  Alignment requirement for Surfaces:            Yes
  Device has ECC support:                        Disabled
  Device supports Unified Addressing (UVA):      Yes
  Device supports Compute Preemption:            No
  Supports Cooperative Kernel Launch:            No
  Supports MultiDevice Co-op Kernel Launch:      No
  Device PCI Domain ID / Bus ID / location ID:   0 / 38 / 0
  Compute Mode:
     < Default (multiple host threads can use ::cudaSetDevice() with device simultaneously) >

deviceQuery, CUDA Driver = CUDART, CUDA Driver Version = 10.0, CUDA Runtime Version = 10.0, NumDevs = 1
Result = PASS
```

2)

```
mixbench/alternating (v0.03-1-g3ace732)
------------------------ Device specifications ------------------------
Device:              Quadro M2000
CUDA driver version: 10.0
GPU clock rate:      1162 MHz
Memory clock rate:   1651 MHz
Memory bus width:    128 bits
WarpSize:            32
L2 cache size:       768 KB
Total global mem:    4041 MB
ECC enabled:         No
Compute Capability:  5.2
Total SPs:           768 (6 MPs x 128 SPs/MP)
Compute throughput:  1785.60 GFlops (theoretical single precision FMAs)
Memory bandwidth:    105.70 GB/sec
-----------------------------------------------------------------------
Total GPU memory 4238082048, free 4104781824
Buffer size:          64MB
Trade-off type:       compute with global memory (block strided)
Warning:              Half precision computations are not supported
----------------------------------------------------------------------------- CSV data -----------------------------------------------------------------------------
Experiment ID, Single Precision ops,,,,              Double precision ops,,,,              Half precision ops,,,,                Integer operations,,,
Compute iters, Flops/byte, ex.time,  GFLOPS, GB/sec, Flops/byte, ex.time,  GFLOPS, GB/sec, Flops/byte, ex.time,  GFLOPS, GB/sec, Iops/byte, ex.time,   GIOPS, GB/sec
            0,      0.000,  120.68,    0.00,  71.18,      0.000,  277.41,    0.00,  61.93,      0.000,    0.00,    -nan,    inf,     0.000,  115.72,    0.00,  74.23
            1,      0.129,  135.72,    7.91,  61.32,      0.065,  264.23,    4.06,  62.99,      0.258,    0.00,     inf,    inf,     0.129,  134.64,    7.97,  61.81
            2,      0.267,  127.30,   16.87,  63.26,      0.133,  254.55,    8.44,  63.27,      0.533,    0.00,     inf,    inf,     0.267,  125.88,   17.06,  63.97
            3,      0.414,  122.61,   26.27,  63.49,      0.207,  246.51,   13.07,  63.16,      0.828,    0.00,     inf,    inf,     0.414,  118.74,   27.13,  65.56
            4,      0.571,  110.26,   38.95,  68.17,      0.286,  237.50,   18.08,  63.29,      1.143,    0.00,     inf,    inf,     0.571,  111.43,   38.55,  67.45
            5,      0.741,  108.32,   49.56,  66.91,      0.370,  229.45,   23.40,  63.17,      1.481,    0.00,     inf,    inf,     0.741,   95.66,   56.12,  75.76
            6,      0.923,   96.60,   66.69,  72.25,      0.462,  220.89,   29.17,  63.19,      1.846,    0.00,     inf,    inf,     0.923,   96.20,   66.97,  72.55
            7,      1.120,   91.71,   81.95,  73.17,      0.560,  213.30,   35.24,  62.92,      2.240,    0.00,     inf,    inf,     1.120,   93.91,   80.04,  71.46
            8,      1.333,   80.22,  107.08,  80.31,      0.667,  203.83,   42.14,  63.21,      2.667,    0.00,     inf,    inf,     1.333,   81.23,  105.75,  79.31
            9,      1.565,   76.83,  125.78,  80.36,      0.783,  196.47,   49.19,  62.85,      3.130,    0.00,     inf,    inf,     1.565,   78.03,  123.84,  79.12
           10,      1.818,   69.33,  154.88,  85.19,      0.909,  187.05,   57.40,  63.14,      3.636,    0.00,     inf,    inf,     1.818,   69.36,  154.81,  85.15
           11,      2.095,   65.25,  181.01,  86.39,      1.048,  204.97,   57.62,  55.00,      4.190,    0.00,     inf,    inf,     2.095,   64.74,  182.45,  87.08
           12,      2.400,   58.10,  221.75,  92.40,      1.200,  222.98,   57.79,  48.15,      4.800,    0.00,     inf,    inf,     2.400,   58.79,  219.16,  91.31
           13,      2.737,   53.78,  259.53,  94.83,      1.368,  240.61,   58.01,  42.39,      5.474,    0.00,     inf,    inf,     2.737,   50.98,  273.79, 100.04
           14,      3.111,   48.74,  308.44,  99.14,      1.556,  260.25,   57.76,  37.13,      6.222,    0.00,     inf,    inf,     3.111,   47.55,  316.15, 101.62
           15,      3.529,   42.62,  377.88, 107.07,      1.765,  277.41,   58.06,  32.90,      7.059,    0.00,     inf,    inf,     3.529,   37.65,  427.84, 121.22
           16,      4.000,   68.63,  250.33,  62.58,      2.000,  295.76,   58.09,  29.04,      8.000,    0.00,     inf,    inf,     4.000,   69.17,  248.37,  62.09
           17,      4.533,   63.55,  287.21,  63.36,      2.267,  314.70,   58.00,  25.59,      9.067,    0.00,     inf,    inf,     4.533,   62.92,  290.12,  64.00
           18,      5.143,   57.28,  337.39,  65.60,      2.571,  333.19,   58.01,  22.56,     10.286,    0.00,     inf,    inf,     5.143,   57.07,  338.65,  65.85
           19,      5.846,   49.31,  413.75,  70.77,      2.923,  351.19,   58.09,  19.87,     11.692,    0.00,     inf,    inf,     5.846,   35.86,  568.90,  97.31
           20,      6.667,   41.88,  512.71,  76.91,      3.333,  371.50,   57.81,  17.34,     13.333,    0.00,     inf,    inf,     6.667,   39.59,  542.39,  81.36
           21,      7.636,   37.91,  594.72,  77.88,      3.818,  393.33,   57.33,  15.01,     15.273,    0.00,     inf,    inf,     7.636,   38.09,  592.01,  77.52
           22,      8.800,   43.58,  542.04,  61.60,      4.400,  417.78,   56.54,  12.85,     17.600,    0.00,     inf,    inf,     8.800,   43.12,  547.86,  62.26
           23,     10.222,   34.01,  726.15,  71.04,      5.111,  432.85,   57.05,  11.16,     20.444,    0.00,     inf,    inf,    10.222,   43.06,  573.52,  56.10
           24,     12.000,   35.56,  724.66,  60.39,      6.000,  451.26,   57.11,   9.52,     24.000,    0.00,     inf,    inf,    12.000,   47.16,  546.48,  45.54
           25,     14.286,   27.77,  966.63,  67.66,      7.143,  470.64,   57.04,   7.99,     28.571,    0.00,     inf,    inf,    14.286,   46.37,  578.88,  40.52
           26,     17.333,   26.04, 1072.12,  61.85,      8.667,  483.55,   57.73,   6.66,     34.667,    0.00,     inf,    inf,    17.333,   50.82,  549.36,  31.69
           27,     21.600,   18.79, 1542.60,  71.42,     10.800,  513.84,   56.42,   5.22,     43.200,    0.00,     inf,    inf,    21.600,   50.34,  575.90,  26.66
           28,     28.000,   19.18, 1567.47,  55.98,     14.000,  525.44,   57.22,   4.09,     56.000,    0.00,     inf,    inf,    28.000,   57.21,  525.49,  18.77
           29,     38.667,   19.88, 1566.53,  40.51,     19.333,  547.98,   56.82,   2.94,     77.333,    0.00,     inf,    inf,    38.667,   53.77,  579.10,  14.98
           30,     60.000,   20.28, 1588.61,  26.48,     30.000,  570.05,   56.51,   1.88,    120.000,    0.00,     inf,    inf,    60.000,   61.70,  522.10,   8.70
           31,    124.000,   19.82, 1679.50,  13.54,     62.000,  577.11,   57.68,   0.93,    248.000,    0.00,     inf,    inf,   124.000,   56.60,  588.12,   4.74
           32,        inf,   20.59, 1668.63,   0.00,        inf,  595.86,   57.66,   0.00,        inf,    0.00,     inf,   -nan,       inf,   61.57,  558.10,   0.00
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
```
