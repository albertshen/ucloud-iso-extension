#!/bin/bash

set -x
set -e

cd /data/repository/sha-kenzo-wechat

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=readme.txt \
        --exclude=assets/ \
        --exclude=upload/ \
        --exclude=Vagrantfile \
        --exclude=protected/config/main.php \
        . /data/sites/kenzo_wechat