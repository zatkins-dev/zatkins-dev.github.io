<#
.SYNOPSIS
    Converts a BibTeX (.bib) file to an ACM-formatted Markdown (.md) file
    using Pandoc, flattening the output to a single line.
.PARAMETER BibPath
    The path to the input BibTeX (.bib) file.
.PARAMETER OutputPath
    The path where the output Markdown (.md) file should be saved.
#>

Param(
    [Parameter(Mandatory = $true, ValueFromPipeline = $true, Position = 0)]
    [ValidateScript({ Test-Path $_ })]
    [string]$BibPath,

    [Parameter(Mandatory = $false, Position = 1)]
    [string]$OutputPath
)

if (-not (Get-Command "pandoc" -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc is not installed or not added to your system PATH. Please install it from https://pandoc.org/"
    Exit
}

$AbsoluteBibPath = (Get-Item $BibPath).FullName
$TempDir = [System.IO.Path]::GetTempPath()

if ([string]::IsNullOrWhiteSpace($OutputPath)) {
    $OutputFolder = Split-Path $AbsoluteBibPath
    $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($AbsoluteBibPath)
    $OutputPath = Join-Path $OutputFolder "$BaseName.md"
}
else {
    $OutputPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($OutputPath)
}

$TempMdPath = Join-Path $TempDir "pandoc-bib-test-$((Get-Random).ToString()).md"
$CslPath = Join-Path $TempDir "acm.csl"

Write-Host "Processing: $AbsoluteBibPath"

try {
    # STEP 1: Download the official ACM Citation Style sheet if not already cached
    if (-not (Test-Path $CslPath)) {
        Write-Host "Downloading ACM style definition..." -ForegroundColor Cyan
        $CslUrl = "https://raw.githubusercontent.com/citation-style-language/styles/master/association-for-computing-machinery.csl"
        Invoke-WebRequest -Uri $CslUrl -OutFile $CslPath -ErrorAction Stop
    }

    # STEP 2: Create temporary markdown file with ACM configuration
    $SafeBibPath = $AbsoluteBibPath -replace '\\', '/'
    $SafeCslPath = $CslPath -replace '\\', '/'

    $FrontMatter = @"
---
bibliography: $SafeBibPath
csl: $SafeCslPath
nocite: "@*"
---
"@

    Set-Content -Path $TempMdPath -Value $FrontMatter -Encoding UTF8

    # STEP 3: Compile with Pandoc (wrap=none prevents internal line breaks)
    pandoc --to=markdown_strict-native_divs-native_spans --wrap=none --citeproc $TempMdPath -o $OutputPath --bibliography="$AbsoluteBibPath" --csl="$CslPath"

    # STEP 4: Post-Process cleanup to strip out lingering HTML spans/brackets
    if (Test-Path $OutputPath) {
        $Lines = Get-Content -Path $OutputPath
        $CleanLines = [System.Collections.Generic.List[string]]::new()

        foreach ($Line in $Lines) {
            if ([string]::IsNullOrWhiteSpace($Line)) { continue }

            # 1. Strip any HTML tags
            $CleanLine = $Line -replace '<[^>]*>', ''

            # 2. Strip any bracketed index prefix if it pops up (e.g. [1])
            $CleanLine = $CleanLine -replace '^\s*\\?\[\d+\\?\]\s*', ''

            $CleanLines.Add($CleanLine.Trim())
        }

        Set-Content -Path $OutputPath -Value $CleanLines -Encoding UTF8
        Write-Host "Successfully converted bibliography to ACM Markdown!" -ForegroundColor Green
    }
}
catch {
    Write-Error "An error occurred during processing: $_"
}
finally {
    if (Test-Path $TempMdPath) {
        Remove-Item -Path $TempMdPath -Force
    }
}
