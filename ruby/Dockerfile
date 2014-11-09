FROM centos:centos7
MAINTAINER Hiroaki Nakamura <hnakamur@gmail.com>

ENV RUBY_RPM_VERSION 2.1.4-2

ADD ruby-${RUBY_RPM_VERSION}.el7.centos.x86_64.rpm /tmp/ruby-${RUBY_RPM_VERSION}.el7.centos.x86_64.rpm

RUN yum install -y libyaml && \
    yum clean all && \
    rpm -i /tmp/ruby-${RUBY_RPM_VERSION}.el7.centos.x86_64.rpm && \
    rm /tmp/ruby-${RUBY_RPM_VERSION}.el7.centos.x86_64.rpm

CMD ["/bin/bash"]
