#-------------------------------------------------------------------------------
# Git
#
# https://en.wikipedia.org/wiki/Git
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install git


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
# Foliate (ePub reader)
#
# https://github.com/johnfactotum/foliate
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install foliate


#-------------------------------------------------------------------------------
# Signal Desktop
#
# Instructions from https://signal.org/download/linux/
#-------------------------------------------------------------------------------

# NOTE: These instructions only work for 64-bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.

# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > ~/Downloads/signal-desktop-keyring.gpg;
cat ~/Downloads/signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install Signal:
sudo apt update
sudo apt install signal-desktop


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
