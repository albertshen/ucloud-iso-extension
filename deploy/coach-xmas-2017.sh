#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-xmas2017/

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=video \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=puppet \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=package.json \
        --exclude=config.rb \
        --exclude=db \
        . /data/sites/coach_xmas2017/
