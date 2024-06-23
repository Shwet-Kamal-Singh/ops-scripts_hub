# Apache Web Server Installation Script for Ubuntu

This script automates the installation of the Apache web server on Ubuntu. It configures the firewall to allow HTTP traffic, restarts the Apache service, and enables it to start on boot.

### Features

* Non-interactive installation of Apache web server
* Configures the firewall to allow HTTP traffic on port 80
* Restarts Apache service
* Enables Apache service to start on boot

### Prerequisites

- Ubuntu operating system
- Sudo privileges

### Usage

* **Download the Script**

```bash
wget https://raw.githubusercontent.com/Shwet-Kamal-Singh/ops-scripts_hub/main/ubuntu/app_stack/web_server/apache/apache_install.sh
```

* **Make the Script Executable**

Open a terminal and navigate to the directory where you saved `apache_install.sh`. Make the script executable with the following command:

    ```bash
    chmod +x apache_install.sh
    ```

* **Run the Script**
Execute the script with sudo privileges:

```bash
sudo ./apache_install.sh
```

### Explanation of the Script

* **Install Apache**:
  * Updates the package index (`sudo apt update`).
  * Installs Apache using the package manager (`sudo apt install -y apache2`).

* **Allow HTTP Traffic**:
  * Configures the firewall to allow HTTP traffic on port 80 (`sudo ufw allow 80/tcp`).

* **Enable and Restart Apache**:
  * Enables the Apache service to start on boot (`sudo systemctl enable apache2`).
  * Restarts the Apache service to apply any changes (`sudo systemctl restart apache2`).

### Additional Considerations

* **Firewall Configuration**:
  * The script uses `ufw` (Uncomplicated Firewall) to manage firewall rules. If `ufw` is not installed or used, you might need to adapt the script to your specific firewall management tool.

* **Sudo Privileges**:
  * The script requires sudo privileges to install packages, modify firewall rules, and manage services. Make sure to run the script with `sudo` or as a user with the necessary permissions.



This script simplifies the process of installing and configuring the Apache web server on an Ubuntu system, making it easy to set up a web server with minimal manual intervention.
