FROM centos:centos7
MAINTAINER Hiroaki Nakamura <hnakamur@gmail.com>

ENV RUBY_VERSION 2.1.4

RUN mkdir -p /usr/share/info && \
    yum install -y gcc make rpmdevtools \
        openssl-devel gdbm-devel compat-db47 \
        readline-devel ncurses-devel tcl-devel byacc libyaml-devel libffi-devel && \
    useradd mockbuild

USER mockbuild
RUN rpmdev-setuptree && \
    cd ~/rpmbuild/SRPMS && \
    curl -o ~/rpmbuild/SOURCES/ruby-${RUBY_VERSION}.tar.gz http://cache.ruby-lang.org/pub/ruby/2.1/ruby-${RUBY_VERSION}.tar.gz && \
    curl https://raw.githubusercontent.com/hansode/ruby-2.1.x-rpm/master/ruby21x.spec | sed '/^%define rubyver/s/2\.1\.2/'${RUBY_VERSION}'/;s/db4-devel/compat-db47/' > ~/rpmbuild/SPECS/ruby.spec
RUN rpmbuild -ba ~/rpmbuild/SPECS/ruby.spec

USER root

VOLUME ["/data"]
CMD ["sh", "-c", "cp ~mockbuild/rpmbuild/RPMS/x86_64/*.rpm ~mockbuild/rpmbuild/SRPMS/*.rpm /data/"]
