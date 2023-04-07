#!/bin/bash

#Att Linux.
sudo apt update
sudo apt upgrade
sudo apt install -y software-properties-common apt-transport-https wget git git-all mousepad

./github.sh

# Changed default key from HTTP to SSH.
git config --global url."git@github.com:".insteadOf https://github.com/
git config --global url."git://".insteadOf https://
git config --global init.defaultBranch main

## If you have SSH key, set it into folder ~/.ssh before you continue.
eval "$(ssh-agent -s)" #Use it to generate SSH key and set it up on Github.
#chmod 600 ~/.ssh/id_rsa
#ssh-add ~/.ssh/id_rsa

# Add a few programs for development/Linux usage.
./nvidia-geforce-driver.sh 
./mysql.sh #MySQL Workbench
./insomnia.sh
./kolourpaint.sh #Paint Brush for Linux.
./vscode.sh



### Install programs from daily usage.
./discord.sh
./chrome.sh
./zoom.sh
./slack.sh

### Personal usage.
./linux-edits.sh
./remote-mousepad.sh
./spotify.sh
./authy.sh

sudo apt-get update -y && sudo apt-get upgrade -y

echo There is your SSH key, copy and paste it into your github account:
cat ~/.ssh/*.pub 