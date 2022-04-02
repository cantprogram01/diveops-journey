FROM centos:7
RUN yum update -y
RUN yum install java-11-openjdk-devel -y
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.78.tar.gz
RUN mv apache-tomcat-8.5.78/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
