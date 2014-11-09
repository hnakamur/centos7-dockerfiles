#!/bin/sh
docker run -d --volumes-from data --name private_repo -p 8800:80 -t hnakamur/private_repo
