# CS6354_Computer_Architecture
CS6354 Grad Computer Architecture course work on CUDA programming.  
The purpose of this code is to find the maxnimum value in a given vector of random size.
By using CUDA to parallelize the searching procedure, it can be observed that GPU significantly outperforms CPU not considering memory transferr time.
Several techniques including binary reduction, shared memory and warp divergence reduction are used to speed up the program.
