# Docker and docker-compose Installation Script for Ubuntu

This script automates the installation of Docker and docker-compose on Ubuntu in a non-interactive manner. It installs Docker, adds the current user to the Docker group for non-sudo Docker usage, and installs docker-compose for managing multi-container Docker applications.

## Features

- Non-interactive installation of Docker
- Adds current user to the Docker group
- Non-interactive installation of docker-compose
- Provides instructions for post-installation steps

## Prerequisites

- Ubuntu operating system
- Sudo privileges

## Usage

* **Download the Script**
```bash
https://github.com/Shwet-Kamal-Singh/ops-scripts_hub/ubuntu/app_stack/Docker_and_docker-compose/Docker_and_docker-compose_install.sh
```
* **Make the Script Executable**
Open a terminal and navigate to the directory where you saved `Docker_and_docker-compose_install.sh`. Make the script executable with the following command:

```bash
chmod +x Docker_and_docker-compose_install.sh
```

* **Run the Script**

Execute the script with sudo privileges:

```bash
sudo ./Docker_and_docker-compose_install.sh
```

* **Post-installation Steps**

After running the script, log out and log back in to apply Docker group membership changes. This step enables you to run Docker commands without using sudo.

## Explanation of the Script

* **Install Docker**:
  * Updates the package index (`apt update`).
  * Installs necessary dependencies (`apt-transport-https`, `ca-certificates`, `curl`, `software-properties-common`).
  * Adds Docker's official GPG key for package verification.
  * Adds Docker repository for Ubuntu Focal (20.04 LTS).
  * Updates package index again to include Docker repository.
  * Installs Docker (`docker-ce`, `docker-ce-cli`, `containerd.io`).
  * Checks Docker service status (`systemctl status docker`).
  * Adds the current user to the `docker` group to manage Docker as a non-root user.

* **Install docker-compose**:
  * Downloads the latest stable release of docker-compose from GitHub using `curl`.
  * Applies executable permissions to the downloaded `docker-compose` binary.
  * Verifies docker-compose installation by displaying its version.

* **Post-installation Message**:

**Note**: Informs the user to log out and log back in to apply Docker group membership changes, enabling Docker commands without sudo.

This script simplifies the process of setting up Docker and docker-compose on Ubuntu, ensuring a smooth installation and configuration for managing containerized applications.
