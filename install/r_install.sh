#!/bin/bash
cd /
sudo apt update
gpg --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
gpg --armor --export '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7' | gpg --dearmor | sudo tee /usr/share/keyrings/cran.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/cran.gpg] https://cloud.r-project.org/bin/linux/debian bookworm-cran40/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt update
sudo dpkg --configure -a
sudo apt install -y r-base r-base-dev
