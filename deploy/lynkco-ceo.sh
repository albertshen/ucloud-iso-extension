#!/bin/bash
set -x
set -e

cd /data/repository/sha-lynkco-ceo

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=readme.txt \
        --exclude=assets \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=config.rb \
        . /data/sites/default/
