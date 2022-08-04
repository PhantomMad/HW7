#!/usr/bin/env bash
mvn package -f tmp/ -l log/build.log
mv tmp/target/ webapps/
rm -rf maven/*
rm -rf tmp/*
