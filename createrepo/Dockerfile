FROM centos:centos7
MAINTAINER Hiroaki Nakamura <hnakamur@gmail.com>

ENV REPO_DIR /data/private-centos7-repo/x86_64
VOLUME ["/data"]

RUN yum install -y createrepo

CMD ["sh", "-c", "mkdir -p $REPO_DIR && createrepo $REPO_DIR"]
