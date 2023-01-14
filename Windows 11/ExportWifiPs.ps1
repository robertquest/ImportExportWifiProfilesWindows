$ExecutionPolicy = Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force


# Import the WifiProfileManagement module
Import-Module WifiProfileManagement

# Create the WifiEx directory if it doesn't exist
if (!(Test-Path "C:\WifiEx")) {
    New-Item -ItemType Directory -Path "C:\WifiEx"
}

# Get all of the wireless profiles
$profiles = Get-WifiProfile

# Export each profile
foreach ($profile in $profiles) {
    (Get-WiFiProfile -ProfileName $profile.Name -ClearKey).XML | Out-File "C:\WifiEx\$($profile.Name).xml" -Encoding utf8
}


Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Scope Process -Force
