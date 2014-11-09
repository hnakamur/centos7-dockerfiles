FROM centos:centos7
MAINTAINER Hiroaki Nakamura <hnakamur@gmail.com>

ENV RUBY_RPM_VERSION 2.1.4-2

ADD private.repo /etc/yum.repos.d/private.repo
ADD gemrc /root/.gemrc

RUN yum install -y ruby && \
    yum clean all && \
    gem install bundler

CMD ["/bin/bash"]
