FROM tomcat:latest
# Dummy text to test 
COPY target/java-web-app*.war /opt/tomcat/apache-tomcat-10.1.7/webapps/
