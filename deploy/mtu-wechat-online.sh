#!/bin/bash
set -x
set -e

cd /data/repository/sha-mtu-online

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.MD \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        . /data/sites/default/

echo "1q2w3e" | sudo -S service php7.0-fpm restart