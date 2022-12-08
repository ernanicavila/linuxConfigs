#!/bin/bash

#Att Linux.
sudo apt update
sudo apt upgrade
sudo apt install -y software-properties-common apt-transport-https wget git git-all mousepad

### Basic configs from github. Change the values name and email for your usage.
git config --global user.name "nome completo"
git config --global user.email "email@email.com"
git config --global core.editor "mousepad --wait"
git config --global pull.rebase false

# Changed default key from HTTP to SSH.
git config --global url."git@github.com:".insteadOf https://github.com/
git config --global url."git://".insteadOf https://
git config --global init.defaultBranch main

## If you have SSH key, set it into folder ~/.ssh before you continue.
#eval "$(ssh-agent -s)" Use it to generate SSH key and set it up on Github.
#chmod 600 ~/.ssh/id_rsa
#ssh-add ~/.ssh/id_rsa

# Add a few programs for development/Linux usage.
./nvidia-geforce-driver.sh 
./discord.sh
./mysql.sh #MySQL Workbench
./insomnia.sh
./kolourpaint.sh #Paint Brush for Linux.



### Install programs from daily usage/development.
./chrome.sh
./zoom.sh
./slack.sh
./vscode.sh

### Personal usage.
./linux-edits.sh
./remote-mousepad.sh

sudo apt-get update -y && sudo apt-get upgrade -y
