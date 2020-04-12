#! /usr/bin/env bash

rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/alessio/ /media/alessio/remote-home/backup/ubuntu-home
