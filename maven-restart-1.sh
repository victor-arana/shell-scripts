#!/bin/bash

# 0. Input from user
COMMIT_ID=$1
NEW_VERSION=$2

# ---- Git process ----
git reset --hard
git checkout $COMMIT_ID
MAVEN_VERSION=$(mvn -q -Dexec.executable=echo -Dexec.args='${project.version}' --non-recursive exec:exec)
echo $MAVEN_VERSION
CURRENT_DIR=$PWD
cd src/main/java/com/walmart/pos/gts/smr/configuration/
sed -i "" 's+home/sgiadm+Users/vvj0003/Desktop+' SMRSpringConfig.java

extract-info-from-current-commit.sh
#Get current ARTIFACT_ID and VERSION

