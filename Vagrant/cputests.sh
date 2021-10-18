#! /bin/bash
#

primes=("20000" "5000000" "50000")
times=("0" "30" "0")
threads=("1" "1" "16")
testruns=5
testcases=3

for ((i=0; i<$testcases;i++));
do
    for (( j=1; j <=$testruns; j++ ))
    do
	    sysbench --num-threads=${threads[$i]} --test=cpu --cpu-max-prime=${primes[$i]} --max-time=${times[$i]} run
    done	
done