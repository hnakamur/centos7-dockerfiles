#!/bin/sh
docker run -d --volumes-from data --name nginx -p 80:80 -t hnakamur/nginx_base
