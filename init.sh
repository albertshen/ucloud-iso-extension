#!/bin/bash
set -x
set -e


array[0]="/data/log/nginx"  
array[1]="/data/log/php5"  
array[2]="/data/repository"
array[4]="/data/sites/default"
array[4]="/data/mysql"

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

echo "1qazxsw2" | sudo -S cp -R /var/lib/mysql/ /data/mysql

echo "1qazxsw2" | sudo -S chown -R mysql:mysql /data/mysql

echo "1qazxsw2" | sudo -S service mysql restart