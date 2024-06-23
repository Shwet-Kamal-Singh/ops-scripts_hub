#!/bin/bash

# Install Apache Web Server
echo "Installing Apache Web Server..."

# Update package index
sudo apt update

# Install Apache
sudo apt install -y apache2

# Allow HTTP traffic through the firewall
sudo ufw allow 80/tcp

# Enable Apache to start on boot
sudo systemctl enable apache2

# Restart Apache service
sudo systemctl restart apache2



echo "Apache Web Server installation and configuration completed."
