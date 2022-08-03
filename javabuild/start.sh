#!/usr/bin/env bash

export JAVA_HOME=/opt/java
export PATH=\$PATH:\$JAVA_HOME/bin
export JAVA_OPTS=-Djava.security.egd=file:///dev/urandom
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven

BTMP="/opt/tmp"
BLOG="/opt/java/log/build.log"
MVN="${MAVEN_HOME}/bin/mvn"

[ -f "${BLOG}" ] || (echo "Cannot find ${BLOG}. Check if it was created!" && exit)
git clone "${GIT_BUILD_LINK}" tmp/
([ -d "${BTMP}" ] && cd "${BTMP}") || (echo "Cannot find ${BTMP}. Check GIT link!" && exit)
([ -f "${MVN}" ] && mvn package -l "${BLOG}") || (echo "Build error! Check maven or pom file" && exit)
exit 0