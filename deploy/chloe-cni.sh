#!/bin/bash
set -x
set -e

cd /data/repository/sha-chloe-ugc

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=package.json \
        --exclude=Vagrantfile \
        --exclude=config/database.php \
        . /data/sites/chloe_cni/