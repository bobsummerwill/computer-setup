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
sudo apt update && sudo apt install signal-desktop


#-------------------------------------------------------------------------------
# Visual Studio Code
#
# Instructions from https://phoenixnap.com/kb/install-vscode-ubuntu
#-------------------------------------------------------------------------------

sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ~/Downloads/packages.microsoft.gpg
sudo install -D -o root -g root -m 644 ~/Downloads/packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update
sudo apt install code
