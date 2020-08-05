#!/bin/bash

# Update index
sudo apt-get update

# Install Java JDK
sudo apt install -y default-jdk

# Install Maven
sudo apt install -y maven

# Set environment variables
JAVA_HOME=$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')
echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc
PATH=$JAVA_HOME/bin:$PATH
echo "export PATH=$PATH" >> ~/.bashrc

M2_HOME=$(readlink -f /usr/bin/mvn | sed 's:/bin/mvn::')
echo "export M2_HOME=$M2_HOME" >> ~/.bashrc
PATH=$M2_HOME/bin:$PATH
echo "export PATH=$PATH" >> ~/.bashrc

# Install curl
sudo apt install -y curl

# Install IntelliJ
sudo snap install intellij-idea-community --channel=2020.1/stable --classic

cd
sudo rm -rf .cache/JetBrains/IdeaIC2020.1/
sudo rm -rf .config/JetBrains/IdeaIC2020.1/
sudo rm -rf .local/share/JetBrains/IdeaIC2020.1/
sudo curl -O "https://lift.cs.princeton.edu/java/linux/IdeaIC2020.1.zip"
sudo unzip IdeaIC2020.1.zip
sudo rm IdeaIC2020.1.zip

# Install command line tools
cd /usr/local
sudo curl -O "https://lift.cs.princeton.edu/java/linux/lift-cli.zip"
sudo unzip lift-cli.zip
sudo rm lift-cli.zip


