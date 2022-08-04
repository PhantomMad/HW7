#!/usr/bin/env sh
cd java/bin/
paxctl -c java
paxctl -m java
paxctl -c javac
paxctl -m javac
setfattr -n user.pax.flags -v "mr" java
setfattr -n user.pax.flags -v "mr" javac
cd /opt
tomcat/bin/startup.sh run && tail -f tomcat/logs/catalina.out