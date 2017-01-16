#!/bin/bash
set -x
set -e

PROD_SRV1=
PROD_SRV2=

cd ~/repository/x

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=readme.txt \
        --exclude=assets/ \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=config.rb \
        --exclude=*.sql \
        . ~/sites/default/

for srv in $PROD_SRV1 $PROD_SRV2
do
        ssh webown@$srv "echo \"1qazxsw2\" | sudo -S service php5-fpm restart"
done
