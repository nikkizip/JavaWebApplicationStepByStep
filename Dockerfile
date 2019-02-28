From centos
RUN yum install tomcat -y
RUN yum install tomcat-webapps -y
RUN yum install tomcat-admin-webapps -y

#ADD context.xml  /usr/local/tomcat/webapps/manager/META-INF/
ADD tomcat-users.xml /usr/local/tomcat/conf
COPY target/in28Minutes-first-webapp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/in28Minutes-first-webapp-0.0.1-SNAPSHOT.war



