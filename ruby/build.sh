#!/bin/sh
if [ ! $1 ]; then
  echo "Usage: $0 private_repo_ip" 1>&2
  exit 1
fi
dir=`dirname $0`
awk -v url=http://$1/private-centos7-repo/x86_64/ '{ gsub("{{ private_repo_url }}", url); print $0 }' $dir/private.repo.base > $dir/private.repo
docker build -t hnakamur/ruby $dir
