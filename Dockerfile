FROM centos:centos6

MAINTAINER Matthew Robson <matthewrobson@gmail.com>

RUN 	\
	yum install -y java-1.7.0-openjdk-devel.x86_64 && \
			bind-utils && \
			iputils && \
			
	yum clean all -y

ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk.x86_64
