FROM debian:jessie
MAINTAINER Javi Merino <merino.jav@gmail.com>

ENV VERSION 1.8.1

ADD https://releases.hashicorp.com/vagrant/${VERSION}/vagrant_${VERSION}_x86_64.deb /usr/src/vagrant_${VERSION}_x86_64.deb 

# Install Vagrant
RUN	apt-get update \
	&& dpkg -i /usr/src/vagrant_${VERSION}_x86_64.deb

# Cleanup
RUN rm /usr/src/vagrant_${VERSION}_x86_64.deb

ENTRYPOINT [ "vagrant" ]
