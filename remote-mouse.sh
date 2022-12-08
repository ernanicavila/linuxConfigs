#!/bin/bash

wget https://www.remotemouse.net/downloads/RemoteMouse.tar.gz
tar xvf RemoteMouse.tar.gz

sudo apt-get update

sudo apt-get install -y mono-complete xdotool libappindicator0.1-cil-dev

mv RemoteMouse ~/Desktop
rm ./RemoteMouse.tar.gz