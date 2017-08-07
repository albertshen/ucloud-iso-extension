#!/bin/bash
set -x
set -e

cd /data/repository/sha-piaget-2017cvd

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.MD \
        --exclude=Vagrantfile \
        --exclude=upload \
        --exclude=font \
        --exclude=config/config.php \
        . /data/sites/default/
