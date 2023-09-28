# Import the required modules
import-module PowerShellGet
echo "Iniciando instalação"
echo "Por estar sendo baixado por powershell, vai demorar bem mais tempo que o normal para baixar"
echo "."
echo "."
echo "."
echo "."
echo "."
echo "."
echo "E não feche essa janela porque pode corromper os arquivos do jogo"

# Download the Terror no trono.zip file
Invoke-WebRequest -Uri "https://filetransfer.io/data-package/eeML0ZKe/download" -OutFile "$env:USERPROFILE\Documents\Terror no trono.zip"

# Extract the Terror no trono.zip file
Expand-Archive -Path "$env:USERPROFILE\Documents\Terror no trono.zip" -DestinationPath "$env:USERPROFILE\Documents\"

# Execute the Terror no trono.exe file
Start-Process -FilePath "$env:USERPROFILE\Documents\Terror_no_trono\Terror no trono.exe"

# Caminho para o arquivo executado
$exePath = "$env:USERPROFILE\Documents\Terror_no_trono\Terror no trono.exe"

# Caminho para o arquivo de atalho na área de trabalho
$shortcutPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "Terror no trono.lnk")

# Criar um objeto WScript.Shell para criar o atalho
$shell = New-Object -ComObject WScript.Shell

# Criar o atalho
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $exePath
$shortcut.Save()

# Exibir mensagem de conclusão
Write-Host "Atalho para o arquivo executado foi criado na área de trabalho."
