#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-space

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=package.json \
        --exclude=Vagrantfile \
        --exclude=gulpfile.js \
        . /data/sites/coach_space/