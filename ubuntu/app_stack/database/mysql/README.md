# MySQL Server Installation Script

This Bash script automates the non-interactive installation and configuration of MySQL server on Ubuntu systems. It also sets the server timezone, installs essential packages, configures the firewall, and ensures services are enabled and running.

### Features
- Non-interactive installation of MySQL server with pre-configured root password.
- Sets the server timezone to India (Asia/Kolkata).
- Installs the `htop` package for system monitoring.
- Configures the firewall to allow MySQL (port 3306) and SSH (port 22) traffic.
- Enables and restarts MySQL and SSH services.

### Prerequisites
- An Ubuntu system with `sudo` privileges.
- Internet connection to download and install packages.

## Usage
* **Download the script:**
```bash
   wget https://github.com/Shwet-Kamal-Singh/ops-scripts_hub/ubuntu/app_stack/database/mysql/mysql-server_install.sh
```

* **Make the script executable:**
```bash
chmod +x mysql-server_install.sh
````

* **Run the script with sudo:**
```bash
sudo ./mysql-server_install.sh
```

