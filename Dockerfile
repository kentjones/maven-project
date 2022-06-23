FROM tomcat:8.0
# Uses the named image as the starting point for creating your own.

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

# this is the port within the docker image
EXPOSE 8080

CMD ["catalina.sh", "run"]