#!/bin/bash
# exit when any command fails
set -e
# Change directory to home directory and create tmp directory
cd ~ && mkdir tmp && cd tmp
VERSION=7.5.1
# Download Gradle to the tmp directory
wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P ~/tmp
# Unzip the file in the /opt/gradle directory 
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle ~/tmp/gradle-${VERSION}-bin.zip
# Create a symbolic link
sudo ln -s /opt/gradle/gradle-${VERSION} /opt/gradle/latest
# Set environment variables
sudo touch /etc/profile.d/gradle.sh
sudo chmod +x /etc/profile.d/gradle.sh
echo "export GRADLE_HOME=/opt/gradle/latest" | sudo tee -a /etc/profile.d/gradle.sh
echo "export PATH=${GRADLE_HOME}/bin:${PATH}" | sudo tee -a /etc/profile.d/gradle.sh
# Load the environment variables in the current shell session
source /etc/profile.d/gradle.sh
# Verify the Gradle installation
gradle -v
