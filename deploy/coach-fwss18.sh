#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-2018fwss

git checkout master

git pull

cd build/dist

rsync -arvP --delete \
        --exclude=media \
        . /data/sites/default/
