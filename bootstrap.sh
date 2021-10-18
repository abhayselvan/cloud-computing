#! /bin/bash
#

CPUTEST_PATH="/cputests.sh"
FILEIOTEST_PATH="/fileiotests.sh"

sudo apt-get update
sudo apt-get install -y sysbench

"$CPUTEST_PATH"
"$FILEIOTEST_PATH"
