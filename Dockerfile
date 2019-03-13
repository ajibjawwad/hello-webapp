# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "balakrishna.wlas@gmail.com"

# Removing the default xmls
#manager xml
RM /usr/local/tomcat/webapps/manager/META-INF/context.xml
#host-manager xml
RM /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
#tomcat-users xml
RM /usr/local/tomcat/conf/tomcat-users.xml

# Custom default xmls of tomcat
#manager xml
COPY ma-context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#host-manager xml
COPY ha-context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
#tomcat-users xml
COPY tomcat-user.xml /usr/local/tomcat/conf/tomcat-users.xml
