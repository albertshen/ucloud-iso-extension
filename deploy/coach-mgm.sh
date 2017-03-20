#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-mgm

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=dist/asset/media \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=package.json \
        --exclude=config.rb \
        --exclude=upload \
        --exclude=*.sql \
        . /data/sites/default/
