#!/bin/bash

# 0. Input from user
NEW_VERSION=$1

# ---- Git process ----
#Get current ARTIFACT_ID and VERSION

# ---- Maven process ----

# a. Shutdown current war
MAVEN_HOME="/usr/local/apache-tomcat-8.5.35"
$MAVEN_HOME/bin/shutdown.sh

# b. Remove the current version on Tomcat
OLD_VERSION=$(ls $MAVEN_HOME/webapps/ | grep 'mtracks-service-*' | grep 'war' | sed 's/mtracks-service-//' | sed 's/.war//')
rm -rf $MAVEN_HOME/webapps/mtracks-service-$OLD_VERSION
rm $MAVEN_HOME/webapps/mtracks-service-$OLD_VERSION.war

# c. Restart Tomcat
$MAVEN_HOME/bin/startup.sh

# d. Deploy new version to Tomcat
cp ~/.m2/repository/com/walmart/pos/gts/mtracks-service/$NEW_VERSION/mtracks-service-$NEW_VERSION.war $MAVEN_HOME/webapps/
