#!/bin/bash

set -x
set -e

cd ~/repository/sha-h5m

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=.vagrant \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=sites/default/files \
        --exclude=sites/default/settings.php \
        . ~/sites/sha_h5m/

cd ~/sites/sha_h5m/

drush cc all
