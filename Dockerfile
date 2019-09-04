FROM centos:7
MAINTAINER jack

RUN yum install -y wget

RUN cd /

RUN wget https://mirrors.cnnic.cn/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz
RUN tar zxvf apache-tomcat-7.0.96.tar.gz

CMD ["/apache-tomcat-7.0.96/bin/catalina.sh", "run"]

EXPOSE 8080
