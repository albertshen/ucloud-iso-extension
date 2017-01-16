#!/bin/bash
set -x
set -e

cp -rf ./webown /data/ 

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

cp -a ./deploy/albert_framework.sh /data/webown/script/deploy.sh

cd /data/webown/

source .bashrc