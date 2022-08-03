#!/usr/bin/env bash
BTMP="tmp"
BLOG="buildlog/build.log"
MVN="${MAVEN_HOME}/bin/mvn"
#
[ -d "${BLOG}" ] || (echo "Cannot find ${BLOG}. Check if it was created!" && exit)
#
([ -d "${BTMP}" ] && cd "${BTMP}") || (echo "Cannot find ${BTMP}. Check GIT link!" && exit)
#
([ -f "${MVN}" ] && mvn package -l "${BLOG}") || (echo "Build error! Check maven or pom file" && exit)
exit 0