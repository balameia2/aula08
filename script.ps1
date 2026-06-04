# 1. Clear Git Credentials from Windows Credential Manager
Write-Host "Cleaning Git credentials..." -ForegroundColor Cyan
#$gitCreds = cmdkey /list | Select-String "git:https://github.com"
#foreach ($line in $gitCreds) {
#    $target = ($line -split "Target: ")[1]
#    cmdkey /delete:$target
#}

cmdkey /delete:git:https://github.com

# 3. Reset Browser Data (Chrome & Edge)
Write-Host "Closing browsers and clearing session data..." -ForegroundColor Yellow
$Browsers = "chrome", "msedge"
Stop-Process -Name $Browsers -Force -ErrorAction SilentlyContinue

$Paths = @(
    "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Network\Cookies",
    "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data",
    "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Network\Cookies",
    "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Login Data"
)

foreach ($path in $Paths) {
    if (Test-Path $path) { Remove-Item $path -Force }
}

Write-Host "Cleanup Complete!." -ForegroundColor Green
