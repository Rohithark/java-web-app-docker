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
