#!/bin/sh
# This is a test script to test various sizes of input array when launching
# cuda kernel code. It generates random numbers as the input vector size.
# And it iterates 100 times to run the program.

count=0
while [ $count -lt 100 ]; do
    size=`shuf -i 1-16000000 -n 1`
    echo $size
    ./vector_max $size -k 4
    let count+=1
done
