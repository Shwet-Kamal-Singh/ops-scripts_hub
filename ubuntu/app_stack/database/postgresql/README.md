# PostgreSQL Installation Script for Ubuntu

This script performs a non-interactive installation of PostgreSQL on any Ubuntu version. It includes essential configurations such as setting a default password, configuring the server timezone to India, and allowing necessary ports through the firewall.

## Features

- Non-interactive installation of PostgreSQL
- Sets the PostgreSQL user password
- Allows PostgreSQL and SSH ports through the firewall
- Configures the server timezone to India (Asia/Kolkata)
- Installs essential packages
- Enables and restarts PostgreSQL service

## Prerequisites

- Ubuntu operating system
- Sudo privileges

## Usage

* **Download the Script**
```bash
wget https://github.com/Shwet-Kamal-Singh/ops-scripts_hub/ubuntu/app_stack/database/postgresql/Postgresql_install.sh
```


* **Make the Script Executable**

```bash
chmod +x Postgresql_install.sh
```

* **Run the Script**

```bash
sudo ./Postgresql_install.sh
```

## Explanation of the Script

- **Update and Upgrade System:**
  The script starts by updating and upgrading the system to ensure all packages are up-to-date.

- **Install Essential Packages:**
  It installs essential packages like `wget`, `gnupg2`, and `lsb-release`, which are necessary for adding the PostgreSQL repository.

- **Add PostgreSQL Repository:**
  It adds the PostgreSQL repository to the system and imports the repository signing key.

- **Install PostgreSQL:**
  It updates the package list again and installs PostgreSQL along with its contrib package.

- **Set PostgreSQL Password:**
  It sets the password for the default `postgres` user to `CHANGE_ME`. Change this password as needed.

- **Allow Firewall Ports:**
  It allows the PostgreSQL port (5432) and SSH port (22) through the firewall.

- **Set Timezone:**
  It sets the server timezone to India (Asia/Kolkata).

- **Enable and Restart PostgreSQL Service:**
  It enables the PostgreSQL service to start on boot and restarts the service.

- **Install Build-Essential Package:**
  It installs the `build-essential` package, which includes a collection of tools for building and compiling software.

## Customization

- **Password:**
  Change the `PGSQL_PASSWORD` variable in the script to set a different password.

- **Timezone:**
  If needed, change the `TIMEZONE` variable to set a different timezone.

## Conclusion

This script automates the installation and configuration of PostgreSQL on Ubuntu systems, making it easier to set up and manage PostgreSQL servers.
