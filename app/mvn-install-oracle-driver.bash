#!/bin/bash

bash ./mvnw install:install-file \
  -Dfile=./libs/ojdbc6.jar \
  -DgroupId=com.oracle \
  -DartifactId=ojdbc6 \
  -Dversion=11.2.0.4.0 \
  -Dpackaging=jar
