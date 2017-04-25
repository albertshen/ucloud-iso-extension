#!/bin/bash
set -x
set -e

cd /data/repository/sha-valentino-valentine

git checkout samecase

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=readme.txt \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=config.rb \
        --exclude=*.sql \
        . /data/sites/default/