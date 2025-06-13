# Basic Cybersecurity Scripts for Linux and Windows

## Description
This repository contains two scripts designed for basic cybersecurity checks. One script is for **Linux systems** (Bash) and the other for **Windows systems** (PowerShell). These scripts perform essential checks to help identify potential vulnerabilities and security risks on a system.

## Features

### Linux Script
- **Check Open Ports**: Displays a list of open ports and services using `netstat`.
- **List Users with Sudo Privileges**: Identifies users who have elevated privileges.
- **Check for Sensitive Files**: Verifies the existence of important system files like `/etc/shadow` and `/etc/passwd`.
- **Check Firewall Status**: Checks if the firewall is active and configured properly using `ufw`.
- **Check for Outdated Packages**: Identifies outdated packages that might contain security vulnerabilities.

### Windows Script
- **Check Open Ports**: Displays a list of open ports and services using `netstat`.
- **List Users with Administrator Privileges**: Identifies users with admin rights.
- **Check for Sensitive Files**: Verifies the existence of critical system files and directories like `System32`.
- **Check Firewall Status**: Checks if the firewall is enabled for various profiles using `Get-NetFirewallProfile`.
- **Check for Outdated Windows Updates**: Identifies installed updates and ensures the system is up to date.


Feel free to fork this repository and improve the scripts.
## Author
Cezar Pedroso
