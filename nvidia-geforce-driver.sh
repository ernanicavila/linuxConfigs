#!/bin/bash

sudo add-apt-repository ppa:oem-solutions-group/nvidia-driver-staging
sudo apt update

ubuntu-drivers devices

echo With the following command, check the best version to your usage of you GC, the recommend will appear after the driver. You can also edit the script to install the version that you want automatically.
read -n1 -r -p "Press any key to continue..."

sudo apt install nvidia-driver-525
