FROM tomcat:8-jdk8-openjdk-slim


# Set the working directory
WORKDIR /usr/local/tomcat

RUN mv webapps webapps2
RUN mv webapps.dist/ webapps

# Copy the WAR file to the Tomcat webapps directory
COPY /target/webapp-0.1.war  /usr/local/tomcat/webapps/


# Expose the port that Tomcat will listen on
EXPOSE 8081

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
