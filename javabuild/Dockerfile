FROM debian:11.3
RUN apt update \
 && apt install -y git \
    default-jdk \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir webapps/ \
    && mkdir tmp/
COPY maven maven/
ENV JAVA_HOME=$(readlink -f /usr/bin/java | sed 's:/bin/java::')
ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8
ENV JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}
WORKDIR /opt/tmp
ENTRYPOINT ["mvn", "package", "-l", "/opt/webapps/build.log"]