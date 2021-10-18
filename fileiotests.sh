#! /bin/bash
#

commands=("prepare" "run" "cleanup")
modes=("rndrw" "seqrd" "seqwr")
filesizes=("3G" "2G" "3G")
threads=("16" "4" "8")
testruns=5
testcases=3
teststages=3

for ((i=0; i<$testcases;i++));
do
    for (( j=0; j <$testruns; j++ ))
    do
        for (( k=0; k<$teststages; k++))
        do
	        sysbench --num-threads=${threads[$i]} --test=fileio --file-total-size=${filesizes[$i]} --file-test-mode=${modes[$i]} ${commands[$k]} 
        done    
    done	
done

