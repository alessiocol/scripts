#! /usr/bin/env bash

USER=$(whoami)

# mount cmd
#  sudo mount -t cifs -o username=${USER},uid=${USER},gid=${USER},vers=1.0 //192.168.178.3/home /media/${USER}/remote-home

REMOTE="/media/${USER}/remote-home/backup/ubuntu-home"
#REMOTE="/var/run/user/${UID}/gvfs/smb-share:server=192.168.178.3,share=home/backup/ubuntu-home"

rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/${USER}/ "${REMOTE}"
