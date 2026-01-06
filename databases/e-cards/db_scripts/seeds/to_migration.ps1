
# Pegar o diretório atual do script
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo de saída
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Se o arquivo já existe, apaga
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Cabeçalho com transação
$header = @"
-- Migration gerada em $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
BEGIN;
"@

# Rodapé com commit
$footer = @"
COMMIT;
"@

# Cria o arquivo com o cabeçalho
Set-Content -Path $outputFile -Value $header -Encoding UTF8

# Pega somente arquivos .sql e ordena por nome (001_, 002_, etc.)
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Sort-Object Name

foreach ($file in $sqlFiles) {
    Write-Host "Adicionando $($file.Name) ..."
    # Lê o conteúdo integral preservando quebras de linha
    $content = Get-Content $file.FullName -Raw

    # Se por acaso existirem 'GO' no meio (herança de SQL Server), remove
    $content = $content -replace "(?m)^\s*GO\s*$", ""

    # Adiciona ao arquivo final com uma quebra de linha
    Add-Content -Path $outputFile -Value $content -Encoding UTF8
    Add-Content -Path $outputFile -Value "`n" -Encoding UTF8
}

# Adiciona o rodapé (commit)
Add-Content -Path $outputFile -Value $footer -Encoding UTF8

Write-Host "Todos os arquivos foram combinados em $outputFile"
 