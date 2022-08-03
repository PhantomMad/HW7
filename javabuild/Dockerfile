FROM debian:latest
RUN apt update \
 && apt install -y \
    git \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir {maven,webapps,tmp,buildlog,java}
ENV JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
COPY start.sh .
RUN chmod +x start.sh
CMD ["/opt/start.sh"]

