#!/bin/bash
cd /
wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.04.2-764-amd64.deb
apt --fix-broken install
sudo apt install -y libssl-dev libclang-dev
sudo dpkg -i rstudio-2024.04.2-764-amd64.deb
