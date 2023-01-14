
# ImportExportWifiProfilesWindows

This project includes PowerShell scripts for importing and exporting wireless network profiles on Windows system. The export script allows to export the profiles from Windows 7 system to a folder on the hard drive, with clear keys. The import script allows to import these profiles to Windows 10 or 11 system using the WifiProfileManagement module. These scripts allow for easy migration of wireless network profiles between different versions of Windows system.
Additionally, it also includes BAT files that use netsh command for exporting and importing wireless network profiles on Windows 7 system. The export file creates a folder named Wifi on the C drive and saves the profiles with clear keys there. The import file searches the Wifi folder on the C drive and imports the profiles found there. These scripts allow for easy automation of the process of exporting and importing wireless network profiles on Windows 7 system.




## Authors

- [@robertquest](https://github.com/robertquest/ImportExportWifiProfilesWindows)


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Lessons Learned

1. Download the import and export scripts from this project to your computer.
2. To export profiles from a Windows 7 system, run the "ExportWifi.bat" file.
- Open the Start menu and search for "cmd"
- Right-click on "cmd" and select "Run as administrator"
- Navigate to the folder where the "ExportWifi.bat" file is located (e.g. by using the command cd "C:\path\to\folder")
- Run the "ExportWifi.bat" file by typing the file name (e.g. ExportWifi.bat) and pressing enter
- Check the "C:\Wifi" folder for XML files with the profile.
3. To import profiles to a Windows 10 or 11 system, first ensure you have the WifiProfileManagement module installed.
- Open PowerShell as administrator
- Run the command Install-Module -Name WifiProfileManagement to install the module
- Run the PowerShell script "ImportWifiPs.ps1" from the folder containing the profiles.
- In PowerShell navigate to the folder containing the "ImportWifiPs.ps1" file (e.g. by using the command cd "C:\path\to\folder")
- Run the "ImportWifiPs.ps1" file by typing the file name (e.g. ImportWifiPs.ps1) and pressing enter. The script will automatically import all profiles from the "C:\Wifi" folder
