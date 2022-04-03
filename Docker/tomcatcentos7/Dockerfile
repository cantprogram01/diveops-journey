# pull centos v7
FROM centos:7
# perform update
RUN yum update -y
# install java11
RUN yum install java-11-openjdk-devel -y
# create dir /opt/tomcat and go to that directory
WORKDIR /opt/tomcat
# download tomcat 8.x
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz .
# extract the tomcat
RUN tar -xvzf apache-tomcat-8.5.78.tar.gz
# move and rename the apache-tomcat-8.5.x to /opt/tomcat
RUN mv apache-tomcat-8.5.78/* /opt/tomcat
# use port 8080 for the tomcat access
EXPOSE 8080
# run this command after the dockerfile has been ran, when container has been created
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
