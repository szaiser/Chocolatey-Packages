$packageArgs = @{
  packageName   = 'PyCharm-community'
  fileType      = 'EXE'
  url           = "https://download.jetbrains.com/python/pycharm-community-$env:ChocolateyPackageVersion.exe"
  silentArgs    = '/S'
  validExitCodes= @(0)
  checksum      = 'd3312df221bf88420981f3405d85e23622807d487367f76e1b1e893e95837c70'
  checksumType  = 'sha256'
}

 
Install-ChocolateyPackage @packageArgs
