FROM centos:latest
RUN yum install java-11-openjdk-devel
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.78
RUN mv apache-tomcat-8.5.78/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/catalina.sh", "run"]
