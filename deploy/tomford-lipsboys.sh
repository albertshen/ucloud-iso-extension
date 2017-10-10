#!/bin/bash
set -x
set -e

cd /data/repository/sha-tomford-lipsboys

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=composer.json \
        . /data/sites/default/