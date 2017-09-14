#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-2018fwss

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=puppet \
        . /data/sites/default/
