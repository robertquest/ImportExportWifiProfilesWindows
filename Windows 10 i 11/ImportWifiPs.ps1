$ExecutionPolicy = Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force

# Import the WifiProfileManagement module
Import-Module WifiProfileManagement

# Get the path to the directory containing the exported profiles
$folderPath = "C:\Wifi"

# Get all of the profile files in the directory
$profileFiles = Get-ChildItem -Path $folderPath -Filter *.xml

# Import each profile file
foreach ($file in $profileFiles) {
    $profile = Get-Content -Path $file.FullName -Raw
    New-WiFiProfile -XmlProfile $profile
}



Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Scope Process -Force
