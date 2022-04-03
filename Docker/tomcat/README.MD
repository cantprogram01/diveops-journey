#This will Automatically

Pre-Requesit:
1. Copy all context.xml and tomcat-user.xml to the same folder as the Dockerfile
2. Change the password in the tomcat-user.xml

What It will do:

1. Pull Tomcat:latest from docker hub
2. Copy the webapps.dist files to webapps folder
3. Copy both context.xml and tomcat-user.xml to tomcat folder
4. Run catalina.sh to start tomcat services
5. Automatically Enable Web Manager