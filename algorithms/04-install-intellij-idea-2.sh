#!/bin/bash
cd
rm -rf .cache/JetBrains/IdeaIC2020.1/
rm -rf .config/JetBrains/IdeaIC2020.1/
rm -rf .local/share/JetBrains/IdeaIC2020.1/
curl -O "https://lift.cs.princeton.edu/java/linux/IdeaIC2020.1.zip"
unzip IdeaIC2020.1.zip
rm IdeaIC2020.1.zip
