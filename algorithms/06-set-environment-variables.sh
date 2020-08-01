#!/usr/bin/env bash

JAVA_HOME=$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')
echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc
PATH=$JAVA_HOME/bin:$PATH
echo "export PATH=$PATH" >> ~/.bashrc
