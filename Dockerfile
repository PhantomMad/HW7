FROM alpine:latest
RUN apk --no-cache update
WORKDIR /opt
RUN mkdir java/ \
    && mkdir tomcat/ \
    && mkdir webapps
ENV JAVA_HOME=/opt/java
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

