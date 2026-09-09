$ErrorActionPreference = 'Continue'
Set-Location 'C:\Users\Ree\Documents\GitHub\cahyono.my.id'
$chrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
$outPdf = Join-Path $PWD 'cv_cahyono.pdf'
$htmlPath = Join-Path $PWD 'cv_cahyono.html'
$args = @('--headless=new', '--disable-gpu', '--no-pdf-header-footer', "--print-to-pdf=$outPdf", $htmlPath)
& $chrome @args
Write-Output ('Exit=' + $LASTEXITCODE)
