#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-einvite-fy18

git checkout master

git pull

cd build/dist

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=.md \
        --exclude=.sql \
        . /data/sites/coach_einvite/
