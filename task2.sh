#!/bin/bash
grep -l "sample" dataset1/* | xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | wc -l); [ "$count" -ge 3 ] && echo "$count {}"' | awk '{print $1, $2}' | sort -k1,1nr | sed 's/file/filtered/'
