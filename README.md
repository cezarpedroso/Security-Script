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

### **Windows (Using `WindowsExe.bat`)**

1. **Download the scripts**:
   - First, download both the **`WindowsExe.bat`** and **`basic_cybersecurity_check.ps1`** scripts to your local machine.

2. **Run the `WindowsExe.bat` file**:
   - Right-click on **`WindowsExe.bat`** and select **"Run as administrator"** to ensure you have sufficient permissions to change the execution policy.

   The `WindowsExe.bat` file will automatically:
   - Set the PowerShell execution policy to `RemoteSigned` (if not already set).
   - Run the **`basic_cybersecurity_check.ps1`** PowerShell script to perform basic security checks on your system.

3. **Result**: The script will output the status of:
   - Open Ports
   - Users with Administrator Privileges
   - Sensitive System Files
   - Firewall Status
   - Outdated Windows Updates

---

### **Linux (Using `LinuxExe.bat`)**

1. **Download the scripts**:
   - First, download both the **`LinuxExe.bat`** and **`basic_cybersecurity_check.sh`** scripts to your local machine.

2. **Run the `LinuxExe.bat` file**:
   - Open a terminal and navigate to the folder where the **`LinuxExe.bat`** file is located.
   - Run the following command:
     ```bash
     bash LinuxExe.bat
     ```

   The **`LinuxExe.bat`** file will automatically:
   - Make the **`basic_cybersecurity_check.sh`** script executable (if necessary).
   - Run the **`basic_cybersecurity_check.sh`** script to perform basic security checks on your Linux system.

3. **Result**: The script will output the status of:
   - Open Ports
   - Users with Administrator Privileges
   - Sensitive System Files
   - Firewall Status
   - Outdated System Updates

---

## **Script Overview**

### **Windows** (`basic_cybersecurity_check.ps1`):
- **Set Execution Policy**: `RemoteSigned` for the current user.
- **Cybersecurity Checks**:
  - Open Ports (`netstat`)
  - Administrator Users (`Get-LocalGroupMember`)
  - Sensitive Files (e.g., `System32`)
  - Firewall Status (`Get-NetFirewallProfile`)
  - Outdated Updates (`Get-WmiObject`)

### **Linux** (`basic_cybersecurity_check.sh`):
- **Cybersecurity Checks**:
  - Open Ports (`netstat`)
  - Administrator Users (`grep 'sudo'`)
  - Sensitive Files (e.g., `/etc/passwd`, `/etc/shadow`)
  - Firewall Status (`ufw status` or `iptables`)
  - Outdated Updates (`apt list --upgradable`)

---

## **Important Notes**

1. **Administrator Privileges**:
   - For **Windows**, you must run the `WindowsExe.bat` file as an Administrator to change the execution policy.
   - For **Linux**, ensure you have the necessary privileges (you may need `sudo` for some operations).
   
2. **Execution Policy (Windows Only)**:
   - The **`WindowsExe.bat`** file will set the PowerShell execution policy to `RemoteSigned` if needed. This ensures that local scripts can run on your system without issues.

3. **Script Compatibility**:
   - The **`WindowsExe.bat`** runs the PowerShell script (`basic_cybersecurity_check.ps1`) on Windows.
   - The **`LinuxExe.bat`** runs the shell script (`basic_cybersecurity_check.sh`) on Linux.

---

## **Conclusion**

This tool helps automate basic cybersecurity checks on both Windows and Linux systems, ensuring that common vulnerabilities are identified and addressed quickly. Follow the appropriate steps for your operating system to run the script and secure your system.

---

Now, the README includes the step to **download both the `.bat` file and the script** (`basic_cybersecurity_check.ps1` or `basic_cybersecurity_check.sh`) before running them!

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
