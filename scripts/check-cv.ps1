param(
    [string]$SourcePdf = ""
)

$ErrorActionPreference = "Stop"

$RepositoryRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot ".."))
$DataPath = Join-Path $RepositoryRoot "_data\cv.yml"
$PagePath = Join-Path $RepositoryRoot "_pages\cv.md"
$PdfPath = Join-Path $RepositoryRoot "files\CV_Lixu.pdf"

function Fail([string]$Message) {
    Write-Error $Message
    exit 1
}

foreach ($path in @($DataPath, $PagePath, $PdfPath)) {
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        Fail "Required CV file is missing: $path"
    }
}

$data = Get-Content -Raw -Encoding UTF8 -LiteralPath $DataPath
$page = Get-Content -Raw -Encoding UTF8 -LiteralPath $PagePath

$requiredSections = @(
    "current_position",
    "education",
    "research_experience",
    "research_interests",
    "research_expertise",
    "teaching_experience",
    "publications",
    "presentations",
    "awards",
    "grants",
    "professional_activity",
    "skills"
)

foreach ($section in $requiredSections) {
    $pattern = "(?m)^" + [regex]::Escape($section) + ":\s*$"
    if ($data -notmatch $pattern) {
        Fail "CV data is missing required section: $section"
    }
}

if ($data -notmatch "(?m)^updated:\s*\S+") {
    Fail "CV data is missing an update date."
}

$updatedMatch = [regex]::Match($data, '(?m)^updated:\s*["'']?([0-9]{4}-[0-9]{2}-[0-9]{2})["'']?\s*$')
if (-not $updatedMatch.Success) {
    Fail "CV data has an invalid update date."
}

$expectedLastModified = [regex]::Escape("last_modified_at: `"$($updatedMatch.Groups[1].Value)`"")
if ($page -notmatch $expectedLastModified) {
    Fail "The web CV front matter date does not match the structured CV date."
}

if ($page -notmatch "site\.data\.cv") {
    Fail "The web CV is not reading from site.data.cv."
}

if ($data -match "(?i)(^|[^a-z])(ghp_|github_pat_|sk-[a-z0-9])") {
    Fail "A token-like string was found in the public CV data."
}

$pdfHeader = [System.Text.Encoding]::ASCII.GetString([System.IO.File]::ReadAllBytes($PdfPath)[0..4])
if ($pdfHeader -ne "%PDF-") {
    Fail "The public CV file is not a valid PDF."
}

if ($SourcePdf) {
    $sourceFull = [System.IO.Path]::GetFullPath($SourcePdf)
    if (-not (Test-Path -LiteralPath $sourceFull -PathType Leaf)) {
        Fail "The specified source CV was not found: $sourceFull"
    }

    $sourceHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $sourceFull).Hash
    $publicHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $PdfPath).Hash
    if ($sourceHash -ne $publicHash) {
        Fail "The public CV PDF does not match the specified source PDF."
    }

    Write-Host "Source and public PDF SHA256 match: $publicHash"
}

Write-Host "CV source structure, web linkage, and public PDF checks passed."
