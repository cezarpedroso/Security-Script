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

## Requirements

### Linux Script
- Linux OS (Ubuntu/Debian-based systems or any other Linux distribution with necessary adjustments).
- **`sudo` privileges** for some tasks.
- **`netstat`**: For listing open ports (usually included with `net-tools`).
- **`ufw` (Uncomplicated Firewall)**: For checking firewall status (optional, replaceable with other firewall management tools like `firewalld` or `iptables`).

### Windows Script
- Windows OS.
- **PowerShell** (preferably run with administrator privileges).
- **`netstat`**: For listing open ports.
- **`Get-NetFirewallProfile`**: For checking firewall status (default cmdlet on modern versions of Windows).
- **`Get-LocalGroupMember`**: For checking users with administrator privileges.

## Usage

### Linux Script

1. **Save the script**:
   - Open your terminal and create a new script file:
     ```bash
     nano basic_cybersecurity_check.sh
     ```
2. **Paste the code** into the file and save it (Ctrl + X, then Y to confirm).
3. **Make the script executable**:
   ```bash
   chmod +x basic_cybersecurity_check.sh
   ```
4. **Run the script**:
   ```bash
   ./basic_cybersecurity_check.sh
   ```

### Windows Script

1. **Save the script**:
   - Open PowerShell ISE or any text editor (e.g., Notepad).
   - Copy and paste the PowerShell script into a new file.
   - Save the file with a `.ps1` extension, e.g., `basic_cybersecurity_check.ps1`.
2. **Set Execution Policy** (if required):
   - Open PowerShell as an Administrator and run:
     ```powershell
     Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
     ```
3. **Run the script**:
   - Open PowerShell with Administrator privileges.
   - Navigate to the directory where the script is saved.
   - Execute the script:
     ```powershell
     .\basic_cybersecurity_check.ps1
     ```

## Example Output

### Linux Script:
```
Checking for open ports...
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN
tcp6       0      0 :::80                   :::*                    LISTEN

Checking users with sudo privileges...
username1 has sudo privileges
username2 has sudo privileges

Checking for sensitive files...
/etc/shadow file exists
/etc/passwd file exists

Checking firewall status...
Status: inactive

Checking for outdated packages...
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages are upgradable:
  libc-bin
1 to upgrade, 0 to newly installed, 0 to remove and 0 not upgraded.
```

### Windows Script:
```
Checking for open ports...
  TCP    0.0.0.0:135             0.0.0.0:0              LISTENING
  TCP    0.0.0.0:445             0.0.0.0:0              LISTENING

Checking users with Administrator privileges...
Administrator has Administrator privileges
JohnDoe has Administrator privileges

Checking for sensitive files...
System32 folder exists
C:\Windows\System32\config exists
C:\Windows\System32\drivers exists

Checking firewall status...
Domain Firewall is True
Private Firewall is True
Public Firewall is True

Checking for outdated Windows updates...
Installed Updates:
HotFixID     InstalledOn
--------     ------------
KB1234567    2021-11-01
KB2345678    2021-12-15

Basic Cybersecurity Check Completed
```


## Contributing
Feel free to fork this repository and improve the scripts.

## Author
Cezar Pedroso
