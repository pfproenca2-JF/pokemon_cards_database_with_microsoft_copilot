#Pegar o diretorio atual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo saido con todos sol
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verifica se arquivo ja existe, se existir deleto
if (Test-Path $outputFile){
    Remove-Item $outputFile
)

#Pega Conteúdo dos arquivos
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter -File | Sort-Object Name

#Concatena Arquivos
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos Arquivos foram combinados em $outputFile"