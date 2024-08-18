# Get the OS version details
$OSVersion = [System.Environment]::OSVersion.Version
$UBR = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").UBR
$DetailedVersion = "$($OSVersion.Major).$($OSVersion.Minor).$($OSVersion.Build).$UBR"

# Get the OS name
$OSName = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName

# Output the OS name and detailed version
"$OSName - Version: $DetailedVersion"
