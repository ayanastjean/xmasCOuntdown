
FROM tomcat:10.1-jdk21-openjdk-slim

COPY target/xmasCD.war /usr/local/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh", "run"]
