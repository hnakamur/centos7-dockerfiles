#!/bin/sh
MOUNT_DIR=/Volumes/Data
DOCKER_IP=`boot2docker ip 2> /dev/null`

docker run -v /data --name data busybox true
docker run --rm -v /usr/local/bin/docker:/docker -v /var/run/docker.sock:/docker.sock svendowideit/samba data
mkdir -p $MOUNT_DIR
mount -t smbfs "//guest@${DOCKER_IP}/data" $MOUNT_DIR
