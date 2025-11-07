FROM tomcat:latest
MAINTAINER Ashok <ashok@oracle.com>
EXPOSE 8080

# Rename WAR to ROOT.war so Tomcat deploys it at "/"
COPY target/maven-web-app.war /usr/local/tomcat/webapps/ROOT.war
