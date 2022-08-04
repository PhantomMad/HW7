FROM alpine:latest
RUN apk --no-cache update && apk add --no-cache bash openjdk11-jre-headless openjdk11-jdk
WORKDIR /opt
RUN mkdir tomcat/ \
    && mkdir webapps
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed 's:/bin/java::')
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
COPY start.sh .
RUN ["chmod", "+x", "./start.sh"]
EXPOSE 8080
ENTRYPOINT ["./start.sh"]

