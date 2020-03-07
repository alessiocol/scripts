#! /usr/bin/env bash

rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/alessio/ /import/home/alessio/ubuntu-home-backup
