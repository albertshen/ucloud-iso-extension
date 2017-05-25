#!/bin/bash
set -x
set -e

cd /data/repository/sha-chloe-slideshow

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=package.json \
        --exclude=Vagrantfile \
        . /data/sites/chloe_slideshow/