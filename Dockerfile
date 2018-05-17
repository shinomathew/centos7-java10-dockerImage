FROM centos:centos7
MAINTAINER shinomathew@gmail.com

RUN yum update -y
RUN yum install wget -y

WORKDIR /

RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm


RUN rpm -ivh jdk-8u131-linux-x64.rpm
RUN rm jdk-8u131-linux-x64.rpm
