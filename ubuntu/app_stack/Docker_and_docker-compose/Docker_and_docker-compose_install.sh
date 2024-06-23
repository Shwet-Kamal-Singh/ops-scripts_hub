#!/bin/bash

# Install Docker
echo "Installing Docker..."

# Update package index
sudo apt update

# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository for Ubuntu Focal (20.04 LTS)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update package index again to include Docker repository
sudo apt update

# Install Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Check Docker status
sudo systemctl status docker

# Add current user to the Docker group to run Docker commands without sudo
sudo usermod -aG docker ${USER}

echo "Docker installation completed."

# Install docker-compose
echo "Installing docker-compose..."

# Download the latest stable release of docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the docker-compose binary
sudo chmod +x /usr/local/bin/docker-compose

# Verify docker-compose installation
docker-compose --version

echo "docker-compose installation completed."

echo "Please log out and log back in to apply Docker group membership changes."
