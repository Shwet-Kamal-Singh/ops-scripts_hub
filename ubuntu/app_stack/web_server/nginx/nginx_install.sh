#!/bin/bash

# Install Nginx Web Server
echo "Installing Nginx Web Server..."

# Update package index
sudo apt update

# Install Nginx
sudo apt install -y nginx

# Allow HTTP traffic through the firewall
sudo ufw allow 80/tcp

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Restart Nginx service
sudo systemctl restart nginx

echo "Nginx Web Server installation and configuration completed."
