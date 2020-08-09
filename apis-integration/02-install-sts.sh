#!/bin/bash

cd /opt

sudo wget https://download.springsource.com/release/STS4/4.7.1.RELEASE/dist/e4.16/spring-tool-suite-4-4.7.1.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz

sudo tar -xvzf spring-tool-suite-4-4.7.1.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz
sudo rm spring-tool-suite-4-4.7.1.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz

sudo ln -s /opt/sts-4.7.1.RELEASE/SpringToolSuite4 /usr/local/bin/sts

echo '[Desktop Entry]' | sudo tee /usr/share/applications/STS.desktop
echo 'Name=SpringSource Tool Suite' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Comment=SpringSource Tool Suite' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Exec=/opt/sts-4.7.1.RELEASE/SpringToolSuite4' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Icon=/opt/sts-4.7.1.RELEASE/icon.xpm' | sudo tee -a /usr/share/applications/STS.desktop
echo 'StartupNotify=true' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Terminal=false' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Type=Application' | sudo tee -a /usr/share/applications/STS.desktop
echo 'Categories=Development;IDE;Java;' | sudo tee -a /usr/share/applications/STS.desktop


