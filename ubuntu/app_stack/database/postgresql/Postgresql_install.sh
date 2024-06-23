#!/bin/bash

# Variables
PGSQL_PASSWORD="CHANGE_ME"
TIMEZONE="Asia/Kolkata"

# Update and install essential packages
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y wget gnupg2 lsb-release

# Add PostgreSQL repository and import repository signing key
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Install PostgreSQL
sudo apt-get update -y
sudo apt-get install -y postgresql postgresql-contrib

# Configure PostgreSQL password
sudo -u postgres psql -c "ALTER USER postgres PASSWORD '$PGSQL_PASSWORD';"

# Allow PostgreSQL and SSH ports through the firewall
sudo ufw allow 5432/tcp
sudo ufw allow 22/tcp

# Set the server timezone to India
sudo timedatectl set-timezone $TIMEZONE

# Enable and restart PostgreSQL service
sudo systemctl enable postgresql
sudo systemctl restart postgresql

# Install essential packages
sudo apt-get install -y build-essential

echo "PostgreSQL installation and configuration is complete."
