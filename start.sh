#!/usr/bin/env sh
cd java/bin/
paxctl -c java
paxctl -m java
paxctl -c javac
paxctl -m javac
cd /opt
tomcat/bin/startup.sh run && tail -f tomcat/logs/catalina.out