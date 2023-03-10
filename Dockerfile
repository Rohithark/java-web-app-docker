# Use an official Java runtime as a parent image
FROM openjdk:latest

# Set environment variables
ENV TOMCAT_MAJOR=10 \
    TOMCAT_VERSION=10.1.0 \
    CATALINA_HOME=/opt/tomcat \
    JAVA_HOME=/usr/local/openjdk-17

# Download and install Tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME}

# Set permissions
RUN chmod +x ${CATALINA_HOME}/bin/*.sh

# Expose port 8080
EXPOSE 8080

# Set the working directory to the Tomcat installation directory
WORKDIR ${CATALINA_HOME}

# Start Tomcat
CMD ["bin/catalina.sh", "run"]
