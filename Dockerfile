From tomcat:8-jre8
MAINTAINER "sms.kazemzadeh@gmail.com"
COPY ./webapp.war /usr/local/tomcat/webapps

From tomcat
# Maintainer
MAINTAINER "AR Shankar" 

# copy war file on to container 
COPY ./webapp.war /usr/local/tomcat/webapps/