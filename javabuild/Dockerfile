FROM debian:11.3
RUN apt update \
 && apt install -y git \
    default-jdk \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir webapps/ \
    && mkdir tmp/ \
    && mkdir log/
COPY maven maven/
COPY start.sh .
RUN ["chmod", "+x", "./start.sh"]
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed 's:/bin/java::')
ENV TZ=Europe/Moscow
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}
ENTRYPOINT ["./start.sh"]