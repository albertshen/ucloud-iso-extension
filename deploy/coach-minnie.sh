#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-minnie-campaign

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=.md \
        --exclude=.sql \
        . /data/sites/coach_minnie/
