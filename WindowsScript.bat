
::Basic Cybersecurity Script for Windows

:: Function to check for open ports
function Check-OpenPorts {
    Write-Host "Checking for open ports..."
    netstat -ano | Select-String "LISTEN"
}

:: Function to check for users with Administrator privileges
function Check-AdminUsers {
    Write-Host "Checking users with Administrator privileges..."
    $admins = Get-LocalGroupMember -Group "Administrators"
    foreach ($admin in $admins) {
        Write-Host "$($admin.Name) has Administrator privileges"
    }
}

:: Function to check for sensitive files
function Check-SensitiveFiles {
    Write-Host "Checking for sensitive files..."

    :: Check if System32 folder exists
    if (Test-Path "C:\Windows\System32") {
        Write-Host "System32 folder exists"
    } else {
        Write-Host "System32 folder does not exist"
    }

    :: Check if any other sensitive files exist
    $sensitiveFiles = @("C:\Windows\System32\config", "C:\Windows\System32\drivers")
    foreach ($file in $sensitiveFiles) {
        if (Test-Path $file) {
            Write-Host "$file exists"
        } else {
            Write-Host "$file does not exist"
        }
    }
}

:: Function to check the firewall status
function Check-FirewallStatus {
    Write-Host "Checking firewall status..."
    $firewall = Get-NetFirewallProfile | Select-Object Name, Enabled
    foreach ($profile in $firewall) {
        Write-Host "$($profile.Name) Firewall is $($profile.Enabled)"
    }
}

:: Function to check for outdated Windows updates
function Check-OutdatedUpdates {
    Write-Host "Checking for outdated Windows updates..."
    $updates = Get-WmiObject -Class "Win32_QuickFixEngineering" | Sort-Object -Property InstalledOn
    if ($updates) {
        Write-Host "Installed Updates:"
        $updates | Select-Object -Property HotFixID, InstalledOn
    } else {
        Write-Host "No updates found"
    }
}

:: Run the functions
Check-OpenPorts
Check-AdminUsers
Check-SensitiveFiles
Check-FirewallStatus
Check-OutdatedUpdates

Write-Host "Basic Cybersecurity Check Completed"
