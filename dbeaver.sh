#!/bin/bash

wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

sudo apt install -y ./dbeaver-ce_latest_amd64.deb

rm -rf ./dbeaver-ce_latest_amd64.deb