#!/bin/bash
sudo wget -P /opt https://downloads.apache.org/xalan/xalan-j/binaries/xalan-j_2_7_2-bin.zip
sudo unzip /opt/xalan-j_2_7_2-bin.zip -d /opt
sudo rm /opt/xalan-j_2_7_2-bin.zip

CLASSPATH="/opt/xalan-j_2_7_2/*"
echo "export CLASSPATH=$CLASSPATH" >> ~/.bashrc
