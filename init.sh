#!/bin/bash
set -x
set -e

array[0]="/data/log/nginx"  
array[1]="/data/log/php5"
array[4]="/data/sites/default"

for path in ${array[@]};  
do 
    if [ ! -d "$path" ]; 
    then :
        mkdir -p $path
        echo "create $path ok"
    else
	echo "$path is exist"
    fi 
done 