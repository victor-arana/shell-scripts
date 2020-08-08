#!/bin/bash

cd /opt
wget https://download.springsource.com/release/STS4/4.7.1.RELEASE/dist/e4.16/spring-tool-suite-4-4.7.1.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz

sudo tar -xvzf spring-tool-suite-4-4.7.1.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz

sudo ln -s /opt/sts-bundle/blablab/STS /usr/local/bin/sts 
