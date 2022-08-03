FROM debian:latest
RUN apt update \
 && apt install -y \
    git \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir {maven,webapps,tmp,buildlog,java}
ENV JAVA_HOME=/opt/java
ENV JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}
COPY start.sh .
RUN chmod +x start.sh
CMD ["start.sh"]

