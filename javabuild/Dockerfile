FROM debian:latest
RUN apt update \
 && apt install -y \
    default-jdk \
    git \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir maven/ webapps/ tmp/ buildlog/
RUN git clone ${GIT_BUILD_LINK} tmp/
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed 's:/usr/lib/jvm/::' | sed 's:/bin/java::')
ENV JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}
CMD ["start.sh"]

