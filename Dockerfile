FROM centos:centos6

MAINTAINER Matthew Robson <matthewrobson@gmail.com>

RUN 	\
	yum install -y java-1.8.0-oracle-devel.x86_64 \
			bind-utils \
			iputils && \
	yum clean all -y && \
	sed -i -e 's/securerandom.source=file:\/dev\/random/securerandom.source=file:\/dev\/urandom/' /usr/lib/jvm/java-1.8.0-oracle-1.8.0.71-1jpp.1.el7.x86_64/jre/lib/security/java.security

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-oracle-1.8.0.71-1jpp.1.el7.x86_64
