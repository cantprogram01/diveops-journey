FROM tomcat:latest
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
CMD ["catalina.sh", "run"]
