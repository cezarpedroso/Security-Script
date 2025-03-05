#!/bin/bash

# Basic Cybersecurity Script for Linux

# Function to check for open ports
check_open_ports() {
    echo "Checking for open ports..."
    sudo netstat -tuln
}

# Function to check for users with sudo privileges
check_sudo_users() {
    echo "Checking users with sudo privileges..."
    getent passwd | awk -F: '{ print $1 }' | while read user; do
        if sudo -l -U "$user" &>/dev/null; then
            echo "$user has sudo privileges"
        fi
    done
}

# Function to check the presence of sensitive files
check_sensitive_files() {
    echo "Checking for sensitive files..."
    if [ -f "/etc/shadow" ]; then
        echo "/etc/shadow file exists"
    else
        echo "/etc/shadow file does not exist"
    fi
    if [ -f "/etc/passwd" ]; then
        echo "/etc/passwd file exists"
    else
        echo "/etc/passwd file does not exist"
    fi
}

# Function to check the status of the firewall
check_firewall_status() {
    echo "Checking firewall status..."
    sudo ufw status || echo "Firewall is not installed or misconfigured"
}

# Function to check for outdated packages
check_outdated_packages() {
    echo "Checking for outdated packages..."
    sudo apt-get update -y
    sudo apt-get upgrade -s | grep 'Inst' || echo "No outdated packages"
}

# Run the functions
check_open_ports
check_sudo_users
check_sensitive_files
check_firewall_status
check_outdated_packages

echo "Basic Cybersecurity Check Completed"
