FROM tomcat:latest
LABEL maintainer="Ashok <ashok@oracle.com>"
EXPOSE 8080
COPY target/maven-web-app.war /usr/local/tomcat/webapps/ROOT.war
