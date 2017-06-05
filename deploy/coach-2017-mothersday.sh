#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-mothersday2017

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=package.json \
        --exclude=config.rb \
        --exclude=build/dist/media \
        --exclude=upload \
        --exclude=*.sql \
        . /data/sites/coach_mothersday2017/