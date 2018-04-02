#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash ${DIR}/mvnw \
  install:install-file \
    -Dfile=${DIR}/libs/ojdbc6.jar \
    -DgroupId=com.oracle \
    -DartifactId=ojdbc6 \
    -Dversion=11.2.0.4.0 \
    -Dpackaging=jar

#mkdir -p ${DIR}/mvn-repo
#
#bash ${DIR}/mvnw \
#  deploy:deploy-file \
#    -Dfile=${DIR}/libs/ojdbc6.jar \
#    -DgroupId=com.oracle \
#    -DartifactId=ojdbc6 \
#    -Dversion=11.2.0.4.0 \
#    -Durl=file:${DIR}/mvn-repo \
#    -DrepositoryId=mvn-repo \
#    -DupdateReleaseInfo=true
#
#bash ${DIR}/mvnw \
#  install:install-file \
#    -Dfile=${DIR}/libs/ojdbc6.jar \
#    -DgroupId=com.oracle \
#    -DartifactId=ojdbc6 \
#    -Dversion=11.2.0.4.0 \
#    -Dpackaging=jar \
#    -DlocalRepositoryPath=${DIR}/mvn-repo
