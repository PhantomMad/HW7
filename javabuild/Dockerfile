FROM debian:11.3
RUN apt update \
 && apt install -y git \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir webapps/ \
    && mkdir tmp/ \
    && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git tmp/
COPY java java/
COPY maven maven/
ENV JAVA_HOME=/opt/java
ENV PATH=\$PATH:\$JAVA_HOME/bin
ENV JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
WORKDIR /opt/tmp
ENTRYPOINT ["mvn", "package", "-l", "/opt/java/log/build.log"]