#!/bin/bash
set -x
set -e

array[0]="/data/log/nginx"  
array[1]="/data/log/php5"  
array[2]="/data/webown/repository"
array[3]="/data/webown/script"
array[4]="/data/webown/sites/default"

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