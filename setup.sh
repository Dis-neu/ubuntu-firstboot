#!bin/bash

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
   echo "Warning! This script must be run as root!"
   exit 1
fi

set -e

# Update the system
echo "Sustem update and upgrade"
sudo apt update -y && sudo apt upgrade -y

#Install necessary Tools
apt install -y curl git 

# Install and configure ufw 
if ! dpkg -l | grep -qw ufw; then
    sudo apt install ufw -y
    sudo ufw allow ssh
    sudo ufw --force enable
    echo "ufw has been installed and configured."
else
    echo "ufw is already installed, skipping."
fi

# install new user 
read -rp "Do you want to create a new user? (j/n): " create_user
if [[ "$create_user" =~ ^[JjYy]$ ]]; then
  read -rp "Enter the new username: " username
  if id "$username" &>/dev/null; then
    echo " User '$username' already exists in the system."
  else
    echo " Creating new user'$username'..."
    adduser --disabled-password --gecos "" "$username"
    usermod -aG sudo "$username"
  fi
else
  echo " Skipping user creation."
fi

# Install gnome tweaks
sudo apt install gnome-tweak-tool -y



