#!/usr/bin/env bash
mvn package -f tmp/ -l log/build.log
mv -r tmp/target/ webapps/
rm -rf maven/*
rm -rf tmp/*
