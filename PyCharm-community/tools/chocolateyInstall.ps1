# check if script runs in admin context
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
[Security.Principal.WindowsBuiltInRole] "Administrator"))
{
Write-Warning "You have to run this Script with elevated privileges"
Write-Host "Press any key to exit the script"
read-host
exit 0;
}

$packageName = 'PyCharm-community' # arbitrary name for the package, used in messages
$installerType = 'EXE' #only one of these two: exe or msi
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# variables
$url = "https://download.jetbrains.com/python/pycharm-community-5.0.2.exe"
$chocTempDir = Join-Path $env:TEMP "pycharm-community"
$tempDir = Join-Path $chocTempDir "pycharm-communityInstall"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$file = Join-Path $tempDir "pycharm-community-5.0.2.exe"

# download the package
Write-Host "Downloading $url to $file"
Invoke-WebRequest $url -OutFile $file
Write-Host "Installing $packageName. This might take some minutes.."
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$file"   -validExitCodes $validExitCodes -debug