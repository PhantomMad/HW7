FROM debian:11.3
RUN apt update \
 && apt install -y git \
    default-jdk \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir webapps/ \
    && mkdir tmp/ \
    && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git tmp/
COPY maven maven/
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed 's:/bin/java::')
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}
WORKDIR /opt/tmp
ENTRYPOINT ["mvn", "package", "-l", "/opt/webapps/build.log"]