#!/bin/bash
set -x
set -e

#PROD_SRV1=
PROD_SRV2=

cd ~/repository/x
git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=web/ \
        --exclude=composer.json \
        --exclude=composer.lock \
        --exclude=app/config/parameters.yml \
        . ~/sites/default/

cd ~/sites/default/

php app/console assets:install
php app/console assetic:dump
php app/console cache:clear --env=prod

echo \"1qazxsw2\" | sudo -S service php5-fpm restart

for srv in $PROD_SRV1 $PROD_SRV2
do
        ssh webown@$srv "echo \"1qazxsw2\" | sudo -S service php5-fpm restart"
done

