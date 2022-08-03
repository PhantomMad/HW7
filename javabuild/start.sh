#!/usr/bin/env bash
BTMP="tmp"
BLOG="javabuild/log/build.log"
MVN="${MAVEN_HOME}/bin/mvn"
#
[ -d "${BLOG}" ] || (echo "Cannot find ${BLOG}. Check if it was created!" && exit)
git clone "${GIT_BUILD_LINK}" tmp/
#
([ -d "${BTMP}" ] && cd "${BTMP}") || (echo "Cannot find ${BTMP}. Check GIT link!" && exit)
#
export JAVA_HOME=/opt/java
export PATH=\$PATH:\$JAVA_HOME/bin
#
([ -f "${MVN}" ] && mvn package -l "${BLOG}") || (echo "Build error! Check maven or pom file" && exit)
exit 0