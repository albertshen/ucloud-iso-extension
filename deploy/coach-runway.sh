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
        --exclude=build/assets/video \
        --exclude=config/config.php \
        --exclude=*.sql \
        . /data/sites/coach_runway/