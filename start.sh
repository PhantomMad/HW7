#!/usr/bin/env bash
if [ `ls  webapps/ | wc -l` -gt 0 ]; then
 mv webapps/*.war tomcat/webapps/
fi
tomcat/bin/startup.sh run && tail -f tomcat/logs/catalina.out