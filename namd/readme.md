MD_1:
```
Info: STRUCTURE SUMMARY:
Info: 64871 ATOMS
Info: 46522 BONDS
Info: 35678 ANGLES
Info: 25414 DIHEDRALS
```


MD_2:
```
Info: STRUCTURE SUMMARY:
Info: 118391 ATOMS
Info: 82202 BONDS
Info: 53518 ANGLES
Info: 25414 DIHEDRALS
```

MD_3:

```
Info: STRUCTURE SUMMARY:
Info: 277942 ATOMS
Info: 189757 BONDS
Info: 112336 ANGLES
Info: 35084 DIHEDRALS

```

MD_4:
```
Info: 13165 ATOMS
Info: 13249 BONDS
Info: 24082 ANGLES
Info: 35084 DIHEDRALS
```

Commands:
```
wget https://www.ks.uiuc.edu/Research/namd/2.13b1/download/873189/NAMD_2.13b1_Linux-x86_64-multicore-CUDA.tar.gz
tar zxf NAMD_2.13b1_Linux-x86_64-multicore-CUDA.tar.gz
cd 2_md
/opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf
```
