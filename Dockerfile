FROM openjdk:8-jdk-alpine


# Set the working directory
WORKDIR /usr/local/tomcat

# Copy the WAR file to the Tomcat webapps directory
COPY /target/webapp-0.1.war  /usr/local/tomcat/webapps/


# Set the environment variables for Tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Expose the port that Tomcat will listen on
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
