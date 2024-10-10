# !/bin/bash

awk -F, '$3 == 2 && $NF ~ /S/ && $7 != ""' titanic.csv | sed 's/female/F/g; s/male/M/g' | awk -F, '{ sum += $7; count++ } END {print sum / count}' 
