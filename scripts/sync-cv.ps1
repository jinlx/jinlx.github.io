param(
    [string]$Source = "$env:USERPROFILE\Dropbox\jinlx\Personal_materials\Application_materials\CV_resume\CV_Lixu.pdf",
    [string]$Destination = "$PSScriptRoot\..\files\CV_Lixu.pdf"
)

$ErrorActionPreference = "Stop"

$SourceFull = [System.IO.Path]::GetFullPath($Source)
$DestFull = [System.IO.Path]::GetFullPath($Destination)

if (-not (Test-Path -LiteralPath $SourceFull)) {
    Write-Error "Source CV not found: $SourceFull"
    exit 1
}

Copy-Item -LiteralPath $SourceFull -Destination $DestFull -Force

$srcHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $SourceFull).Hash
$dstHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $DestFull).Hash

if ($srcHash -ne $dstHash) {
    Write-Error "Copy failed: hashes do not match."
    exit 1
}

Write-Host "CV synced from $SourceFull"
Write-Host "Synced to   $DestFull"
Write-Host "SHA256: $srcHash"
