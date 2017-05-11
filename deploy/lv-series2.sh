#!/bin/bash

set -x
set -e

cd /data/repository/sha-lv-series2

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=.vagrant \
        --exclude=README.md \
        --exclude=phpmyadmin/ \
        --exclude=ws/upload \
        --exclude=media/ \
        --exclude=ws/private/conf/config.ini.php \
        . /data/sites/lvseries2/