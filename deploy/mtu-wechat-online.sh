#!/bin/bash
set -x
set -e

#PROD_SRV1=
PROD_SRV2=

cd /data/repository/sha-mtu-online
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