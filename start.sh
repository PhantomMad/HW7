#!/usr/bin/env bash
#wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk
#apk add glibc-2.34-r0.apk
#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-bin-2.34-r0.apk
#apk add glibc-bin-2.34-r0.apk
tomcat/bin/startup.sh run && tail -f tomcat/logs/catalina.out