<#
.SYNOPSIS
    Loops over publication subdirectories and converts the BibTeX file
    inside each directory to a clean, single-line Markdown file.
.DESCRIPTION
    This script traverses every child directory of the main publications folder.
    If a .bib file is found inside a subdirectory, it runs the converter tool
    and outputs the single-line markdown file directly into that same subdirectory.
#>

# 1. Define paths relative to the script location
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

$ConverterScript = Join-Path $ScriptDir "Convert-BibToMarkdown.ps1"
# Target the root directory containing your publication subfolders
$PublicationsRootDir = Join-Path $ScriptDir "..\content\publications"

# 2. Safety check for core converter
if (-not (Test-Path $ConverterScript)) {
    Write-Error "Could not find the core converter script at: $ConverterScript"
    Exit 1
}

if (-not (Test-Path $PublicationsRootDir)) {
    Write-Error "Publications root directory not found at: $PublicationsRootDir"
    Exit 1
}

Write-Host "Scanning publication subdirectories in: $PublicationsRootDir`n" -ForegroundColor Cyan

# 3. Get all immediate subdirectories
$SubDirectories = Get-ChildItem -Path $PublicationsRootDir -Directory

foreach ($Dir in $SubDirectories) {
    Write-Host "Checking directory: $($Dir.Name)" -ForegroundColor Gray

    # Find the first .bib file inside this specific subdirectory
    $BibFile = Get-ChildItem -Path $Dir.FullName -Filter "*.bib" | Select-Object -First 1

    if ($BibFile) {
        # Define output markdown file matching the bib file name (e.g., paper.bib -> paper.md)
        $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($BibFile.FullName)
        $OutputFile = Join-Path $Dir.FullName "$BaseName.md"

        Write-Host "  -> Found: $($BibFile.Name)" -ForegroundColor Yellow
        Write-Host "  -> Compiling to single-line entry..." -ForegroundColor Cyan

        # Invoke your core converter script for this directory's files
        & $ConverterScript -BibPath $BibFile.FullName -OutputPath $OutputFile
    }
    else {
        Write-Host "  -> No .bib file found in this subdirectory. Skipping." -ForegroundColor DarkGray
    }
    Write-Host ("-" * 40) -ForegroundColor Gray
}

Write-Host "`nAll subdirectories processed!" -ForegroundColor Green
