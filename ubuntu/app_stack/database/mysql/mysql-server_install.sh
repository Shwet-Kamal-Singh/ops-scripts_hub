#!/bin/bash

# Update package list and install required packages
sudo apt-get update -y
sudo apt-get install -y debconf-utils htop ufw

# Set the MySQL root password
DB_ROOT_PASS="CHANGE_ME"

# Pre-seed the MySQL root password to avoid interactive prompts
echo "mysql-server mysql-server/root_password password $DB_ROOT_PASS" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $DB_ROOT_PASS" | sudo debconf-set-selections

# Install MySQL server non-interactively
sudo apt-get install -y mysql-server

# Set timezone to India
sudo timedatectl set-timezone Asia/Kolkata

# Allow MySQL and SSH through the firewall
sudo ufw allow 3306/tcp  # MySQL port
sudo ufw allow 22/tcp    # SSH port

# Enable and start MySQL and SSH services
sudo systemctl enable mysql
sudo systemctl restart mysql

sudo systemctl enable ssh
sudo systemctl restart ssh

# Enable and start UFW
sudo ufw --force enable

echo "MySQL root password is set to $DB_ROOT_PASS"
echo "MySQL and SSH ports are allowed through the firewall"
echo "Timezone is set to India (Asia/Kolkata)"
echo "System essential package htop is installed"
