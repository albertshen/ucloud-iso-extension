#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-runway

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=*.sql \
        . /data/sites/default/

echo "1qazxsw2" | sudo -S service php5-fpm restart