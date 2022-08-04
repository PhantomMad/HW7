#!/usr/bin/env bash

BTMP="/opt/tmp"
BLOG="/opt/java/log/build.log"
MVN="${MAVEN_HOME}/bin/mvn"

[ -f ${BLOG} ] || (echo "Cannot find ${BLOG}. Check if it was created!" && exit)
git clone "${GIT_BUILD_LINK}" ${BTMP}
([ -d ${BTMP} ] && cd ${BTMP}) || (echo "Cannot find ${BTMP}. Check GIT link!" && exit)
([ -f ${MVN} ] && exec mvn package -l ${BLOG}) || (echo "Build error! Check maven or pom file" && exit)