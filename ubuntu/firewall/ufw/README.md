# UFW Firewall Management

### Prerequisites:

* **Ubuntu System:** This software is designed specifically for Ubuntu systems. While it might be possible to adapt it for other Linux distributions, it's not guaranteed to work as intended without significant modifications.
* **Administrative Privileges (sudo):** UFW requires sudo privileges to manage firewall rules. This ensures only authorized users can make changes to the firewall configuration, safeguarding your system's security.


### Optional Considerations:

* **Basic Firewall Understanding:** Having a foundational understanding of firewall concepts (inbound/outbound traffic, ports) can aid in creating well-informed firewall rules.
* **Command Line Familiarity:** UFW primarily utilizes command-line tools. While the syntax is relatively easy to follow, some familiarity with the command line will facilitate execution and navigation.

#### Basic Commands

* **Enable UFW :** Enable the firewall with default rules
```bash
sudo ufw enable
```

* **Disable UFW :** Disable the firewall.
```bash
sudo ufw disable
```

* **Check UFW Status :** Check if the firewall is active or inactive detailed status of the firewall.
```bash
sudo ufw status
sudo ufw status verbose
```


#### Allow and Deny Rules

* **Allow Port:**
```bash
sudo ufw allow 22
sudo ufw allow 53/tcp
sudo ufw allow 53/udp
```

* **Deny Port:**

```bash
sudo ufw deny 22
sudo ufw deny 53/tcp
sudo ufw deny 53/udp
```


#### Delete Existing Rules

* **Delete Rule:**
```bash
sudo ufw delete allow 22
sudo ufw delete deny 80/tcp
```


#### Allow/Deny by Service Name


* **Allow by Service Name:**
```bash
sudo ufw allow ssh
sudo ufw allow http
```

* **Deny by Service Name:**
```bash
sudo ufw deny ssh
sudo ufw deny http
```

#### Advanced Syntax

* **Allow by Specific IP:**
```bash
sudo ufw allow from 192.168.1.100
sudo ufw allow from 192.168.1.0/24
```

* **Allow by Specific Port and IP:**
```bash
sudo ufw allow from 192.168.0.4 to any port 22
sudo ufw allow from 192.168.0.4 to any port 22 proto tcp
```

* **Deny by Specific IP:**
```bash
sudo ufw deny from 192.168.1.100
```

* **Deny by Specific Port and IP:**
```bash
sudo ufw deny from 192.168.0.1 to any port 22
```

#### Working with Numbered Rules

* **List Numbered Rules:**
```bash
sudo ufw status numbered
```

* **Insert Numbered Rule:**
```bash
sudo ufw insert 1 allow from 192.168.1.100
```


### Logging

* **Enable Logging:**
```bash
sudo ufw logging on
```

* **Disable Logging:**
```bash
sudo ufw logging off
```

### Example Scenarios

* **Block Specific IPs on Port 22:**
```bash
sudo ufw deny from 192.168.0.1 to any port 22
sudo ufw deny from 192.168.0.7 to any port 22
sudo ufw allow from 192.168.0.0/24 to any port 22 proto tcp
```

* **Update Rules Based on Scenario Changes:**
```bash
sudo ufw delete allow from 192.168.0.0/24 to any port 22
sudo ufw deny from 192.168.0.3 to any port 22
sudo ufw allow from 192.168.0.0/24 to any port 22 proto tcp
```

### Interpreting Log Entries

* **Log Entry Components:**

  * **SRC:** Source IP address
  * **DST:** Destination IP address
  * **PROTO:** Protocol (TCP/UDP)
  * **SPT:** Source port
  * **DPT:** Destination port
