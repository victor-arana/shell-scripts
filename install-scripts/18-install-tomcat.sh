#!/bin/bash
# exit when any command fails
set -e
# Update existing list of packages
sudo apt-get update
# Change directory to Tomcat installation directory
cd /usr/local
# Download Apache Tomcat to the working directory
sudo curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz
# Extract the content of the tar file
sudo tar -xf apache-tomcat-8.5.61.tar.gz
# Remove tar file
sudo rm apache-tomcat-8.5.61.tar.gz
# Change the ownership of the Tomcat directory
sudo chown -R ../apache-tomcat-8.5.61
# Make all scripts executable
chmod +x bin/*.sh
