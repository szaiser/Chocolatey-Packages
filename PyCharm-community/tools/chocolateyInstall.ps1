$packageArgs = @{
  packageName   = 'PyCharm-community'
  fileType      = 'EXE'
  url           = "https://download.jetbrains.com/python/pycharm-community-2016.3.3.exe"
  url64bit      = "https://download.jetbrains.com/python/pycharm-community-2016.3.3.exe"
  silentArgs    = '/S'
  validExitCodes= @(0)
  checksum      = '8f0bab6caceb922f2ac7904c722eb252040a929a26d4eeaad74405f07c085d32' 
  checksumType  = 'sha256'
  checksum64    = '8f0bab6caceb922f2ac7904c722eb252040a929a26d4eeaad74405f07c085d32'
  checksumType64= 'sha256'
}

 
Install-ChocolateyPackage @packageArgs