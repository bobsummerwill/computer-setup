#-------------------------------------------------------------------------------
# Android Studio
#
# https://developer.android.com/studio
#-------------------------------------------------------------------------------

# Install dependencies
sudo apt update
sudo apt install -y wget unzip openjdk-17-jdk

# Download Android Studio (update version as needed)
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.2.1.20/android-studio-2023.2.1.20-linux.tar.gz

# Extract the archive
tar -xzf android-studio-2023.2.1.20-linux.tar.gz

# Move to /opt directory
sudo mv android-studio /opt/

# Clean up
rm android-studio-2023.2.1.20-linux.tar.gz

# (Optional) Start Android Studio
# /opt/android-studio/bin/studio.sh

# (Optional) To create a desktop entry, launch Android Studio and use Tools > Create Desktop Entry...


#-------------------------------------------------------------------------------
# Balena Etcher
#
# https://phoenixnap.com/kb/etcher-ubuntu
#-------------------------------------------------------------------------------
curl -L -o ./balena-etcher_2.1.4_amd64.deb https://github.com/balena-io/etcher/releases/download/v2.1.4/balena-etcher_2.1.4_amd64.deb
sudo apt install ./balena-etcher_2.1.4_amd64.deb
rm balena-etcher_2.1.4_amd64.deb


#-------------------------------------------------------------------------------
# Docker
#
# https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
#-------------------------------------------------------------------------------

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install \
  ca-certificates \
  curl

sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin


#-------------------------------------------------------------------------------
# Discord
#
# https://snapcraft.io/discord
#-------------------------------------------------------------------------------
sudo snap install discord


#-------------------------------------------------------------------------------
# Git
#
# https://en.wikipedia.org/wiki/Git
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install git


#-------------------------------------------------------------------------------
# Foliate (ePub reader)
#
# https://github.com/johnfactotum/foliate
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install foliate


#-------------------------------------------------------------------------------
# NVM (Node Version Manager) and then node.js
#-------------------------------------------------------------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node


#-------------------------------------------------------------------------------
# And then https://cline.bot Cline CLI
#-------------------------------------------------------------------------------
npm install -g cline


#-------------------------------------------------------------------------------
# IVPN
#
# https://www.ivpn.net/apps-linux/
#-------------------------------------------------------------------------------

# Add IVPN repository key
curl -fsSL https://repo.ivpn.net/stable/ubuntu/generic.gpg | sudo gpg --dearmor -o /usr/share/keyrings/ivpn.gpg

# Add IVPN repository
echo "deb [signed-by=/usr/share/keyrings/ivpn.gpg] https://repo.ivpn.net/stable/ubuntu generic main" | sudo tee /etc/apt/sources.list.d/ivpn.list

# Update package list and install IVPN
sudo apt update
sudo apt install ivpn-ui


#-------------------------------------------------------------------------------
# LibreOffice
#
# https://www.libreoffice.org/
#-------------------------------------------------------------------------------

sudo apt install libreoffice


#-------------------------------------------------------------------------------
# Signal
#
# https://signal.org/download/linux/
#-------------------------------------------------------------------------------
sudo snap install signal-desktop


#-------------------------------------------------------------------------------
# Slack
#-------------------------------------------------------------------------------
sudo snap install slack


#-------------------------------------------------------------------------------
# (Haskell) Stack
#
# Instructions from https://docs.haskellstack.org/en/stable/install_and_upgrade/
#-------------------------------------------------------------------------------

curl -sSL https://get.haskellstack.org/ | sh


#-------------------------------------------------------------------------------
# Telegram Desktop
#
# Instructions from https://snapcraft.io/telegram-desktop
#-------------------------------------------------------------------------------

snap install telegram-desktop


#-------------------------------------------------------------------------------
# Visual Studio Code
#
# Instructions from https://code.visualstudio.com/docs/setup/linux
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install \
  apt-transport-https \
  gpg \
  wget

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg
rm -f microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update
sudo apt install code


#-------------------------------------------------------------------------------
# YubiKey Manager
#
# https://www.yubico.com/support/download/yubikey-manager/
#-------------------------------------------------------------------------------

# Download the latest Yubico Authenticator
curl -L -o ~/Downloads/yubico-authenticator-latest-linux.tar.gz https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz

# Create the target directory and unpack
mkdir -p ~/Projects/YubiKeyManager
tar -xzf ~/Downloads/yubico-authenticator-latest-linux.tar.gz -C ~/Projects/YubiKeyManager --strip-components=1

# Run desktop integration
cd ~/Projects/YubiKeyManager && ./desktop_integration.sh --install

# Clean up the downloaded archive
rm ~/Downloads/yubico-authenticator-latest-linux.tar.gz


#-------------------------------------------------------------------------------
# Zoom
#
# support.zoom.com/hc/en/article?id=zm_kb&sysparm_article=KB0063458
#-------------------------------------------------------------------------------

wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb
rm ./zoom_amd64.deb
