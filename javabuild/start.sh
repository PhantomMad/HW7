#!/usr/bin/env bash
git clone "${GHUB_LINK}" tmp/
mvn package -f tmp/ -l log/build.log
mv tmp/target/*.*ar webapps/
rm -rf maven/*
rm -rf tmp/*
