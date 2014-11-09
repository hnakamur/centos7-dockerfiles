FROM centos:centos7
MAINTAINER Hiroaki Nakamura <hnakamur@gmail.com>

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN rpm --import http://nginx.org/keys/nginx_signing.key && \
    yum install -y nginx

VOLUME ["/data"]
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
