# IP-Tables

IPTables is a powerful firewall utility for Linux systems that allows you to configure and manage network filtering rules. The "all" command in IPTables is not a standalone command; rather, it's used in conjunction with specific actions or rules to specify all IP addresses, all protocols, or all ports.

### Firewall Setup:

* **Define default policies:**
```bash
iptables -P INPUT <policy>
iptables -P FORWARD <policy>
iptables -P OUTPUT <policy>

```
* **Clear existing rules:**
```bash
iptables -F
iptables -X
iptables -Z
```

* **List current rules:**
```bash
iptables -L
```

### Allowing/Denying Traffic:

* **Allow traffic from a specific IP:**
```bash
iptables -A INPUT -s <IP_ADDRESS> -j ACCEPT
```

* **Deny traffic from a specific IP:**
```bash
iptables -A INPUT -s <IP_ADDRESS> -j DROP
```

* **Allow traffic on a specific port:**
```bash
iptables -A INPUT -p <PROTOCOL> --dport <PORT_NUMBER> -j ACCEPT
```

* **Deny traffic on a specific port:**
```bash
iptables -A INPUT -p <PROTOCOL> --dport <PORT_NUMBER> -j DROP
```

* **Allow outgoing traffic:**
```bash
iptables -A OUTPUT -j ACCEPT
```

* **Deny outgoing traffic:**
```bash
iptables -A OUTPUT -j DROP
```

### Network Address Translation (NAT):

* **Enable NAT:**
```bash
iptables -t nat -A POSTROUTING -o <OUT_INTERFACE> -j MASQUERADE
```

* **Forwarding traffic:**
```bash
iptables -A FORWARD -i <IN_INTERFACE> -o <OUT_INTERFACE> -j ACCEPT
```

### Packet Filtering:


* **Filter packets based on source/destination IP:**
```bash
iptables -A INPUT -s <SOURCE_IP> -d <DESTINATION_IP> -j <ACTION>
```

* **Filter packets based on protocol:**
```bash
iptables -A INPUT -p <PROTOCOL> -j <ACTION>
```

* **Filter packets based on state (e.g., established, related):**
```bash
iptables -A INPUT -m state --state <STATE> -j <ACTION>
```


### Logging:

* **Log specific packets:**
```bash
iptables -A INPUT -s <SOURCE_IP> -j LOG --log-prefix "Prefix:"
```
