# Import the required modules
import-module PowerShellGet
echo "Iniciando instalao"
echo "Por estar sendo baixado por powershell, vai demorar bem mais tempo que o normal para baixar"
echo "E nao feche essa janela porque pode corromper os arquivos do jogo"
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
# Download the Terror no trono.zip file
Invoke-WebRequest -Uri "https://filetransfer.io/data-package/eeML0ZKe/download" -OutFile "$env:USERPROFILE\Documents\Terror no trono.zip"
# Extract the Terror no trono.zip file
Expand-Archive -Path "$env:USERPROFILE\Documents\Terror no trono.zip" -DestinationPath "$env:USERPROFILE\Documents\"
# Execute the Terror no trono.exe file
Start-Process -FilePath "$env:USERPROFILE\Documents\Terror_no_trono\Terror no trono.exe"