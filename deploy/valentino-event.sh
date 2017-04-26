#!/bin/bash
set -x
set -e

cd /data/repository/sha-valentino-event

git checkout master

git pull

cd /data/repository/sha-valentino-event/event

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=gulpfile.js \
        --exclude=package.json \
        . /data/sites/valentino_rosso/event

cd /data/repository/sha-valentino-event/ppc

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=gulpfile.js \
        --exclude=package.json \
        . /data/sites/valentino_rosso/ppc