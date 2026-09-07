param(
    [string]$Source = $env:CV_SOURCE_PDF,
    [string]$Destination = "$PSScriptRoot\..\files\CV_Lixu.pdf"
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($Source)) {
    Write-Error "Provide the local CV source with -Source or set the CV_SOURCE_PDF environment variable."
    exit 1
}

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

& (Join-Path $PSScriptRoot "check-cv.ps1") -SourcePdf $SourceFull

Write-Host "CV synced from $SourceFull"
Write-Host "Synced to   $DestFull"
Write-Host "SHA256: $srcHash"
