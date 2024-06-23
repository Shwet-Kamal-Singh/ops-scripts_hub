# Nginx Web Server Installation Script for Ubuntu

This script automates the installation of the Nginx web server on Ubuntu. It configures the firewall to allow HTTP traffic, restarts the Nginx service, and enables it to start on boot.

## Features

- Non-interactive installation of Nginx web server
- Configures the firewall to allow HTTP traffic on port 80
- Restarts Nginx service
- Enables Nginx service to start on boot

## Prerequisites

- Ubuntu operating system
- Sudo privileges

## Usage

* **Download the Script**
Save the following script in a file named `nginx_install.sh`.

```bash

```

* **Make the Script Executable**
Open a terminal and navigate to the directory where you saved `nginx_install.sh`. Make the script executable with the following command:

```bash
chmod +x nginx_install.sh
```

* **Run the Script**

Execute the script with sudo privileges:

```bash
sudo ./nginx_install.sh
```

### Explanation of the Script

* **Install Nginx**:
  * Updates the package index (`sudo apt update`).
  * Installs Nginx using the package manager (`sudo apt install -y nginx`).

* **Allow HTTP Traffic**:
  * Configures the firewall to allow HTTP traffic on port 80 (`sudo ufw allow 80/tcp`).

* **Enable and Restart Nginx**:
  * Enables the Nginx service to start on boot (`sudo systemctl enable nginx`).
  * Restarts the Nginx service to apply any changes (`sudo systemctl restart nginx`).

### Additional Considerations

* **Firewall Configuration**:
  * The script uses `ufw` (Uncomplicated Firewall) to manage firewall rules. If `ufw` is not installed or used, you might need to adapt the script to your specific firewall management tool.

* **Sudo Privileges**:
  * The script requires sudo privileges to install packages, modify firewall rules, and manage services. Make sure to run the script with `sudo` or as a user with the necessary permissions.

This script simplifies the process of installing and configuring the Nginx web server on an Ubuntu system, making it easy to set up a web server with minimal manual intervention.
