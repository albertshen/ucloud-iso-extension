#!/bin/bash

set -x
set -e

cd /data/repository/sha-h5m

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=.vagrant \
        --exclude=README.md \
        --exclude=Vagrantfile \
        --exclude=drupal/sites/default/files \
        --exclude=drupal/sites/default/settings.php \
        . /data/sites/same_h5m/

cd /data/sites/same_h5m/

drush cc all
