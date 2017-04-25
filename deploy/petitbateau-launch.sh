#!/bin/bash
set -x
set -e

cd /data/repository/sha-petitbateau-launch

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=README.MD \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        . /data/sites/default/