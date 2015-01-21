FROM ubuntu:14.04

MAINTAINER Synapse <Synapse791@gmail.com>

RUN apt-get update && \
	apt-get install -y mysql-server && \
	sed -i 's/127\.0\.0\.1/0.0.0.0/g' /etc/mysql/my.cnf

ADD start-mysql /usr/local/bin/start-mysql

CMD ["/usr/local/bin/start-mysql"]
