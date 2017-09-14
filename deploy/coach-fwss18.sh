#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-2018fwss/build/dist

git checkout master

git pull

rsync -arvP --delete \
        --exclude=media \
        . /data/sites/default/
