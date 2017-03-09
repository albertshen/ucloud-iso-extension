#!/bin/bash
set -x
set -e

#PROD_SRV1=
PROD_SRV2=

cd /data/repository/sha-petitbateau-wechat
git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=composer.json \
        --exclude=composer.lock \
        --exclude=web/upload \
        --exclude=app/config/parameters.yml \
        . /data/sites/default/

cd /data/sites/default/

php bin/console cache:clear --env=prod

echo \"1qazxsw2\" | sudo -S service php5-fpm restart

for srv in $PROD_SRV1 $PROD_SRV2
do
        ssh webown@$srv "echo \"1qazxsw2\" | sudo -S service php5-fpm restart"
done