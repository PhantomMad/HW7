FROM alpine:latest
RUN apk --no-cache update \
    && apk add paxctl
WORKDIR /opt
RUN mkdir java/ \
    && mkdir tomcat/ \
    && mkdir webapps
ENV JAVA_HOME=/opt/java
ENV JRE_HOME=/opt/java
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
COPY start.sh .
RUN ["chmod", "+x", "./start.sh"]
EXPOSE 8080
ENTRYPOINT ["./start.sh"]

