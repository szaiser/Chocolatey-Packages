$packageArgs = @{
  packageName   = 'PyCharm-community'
  fileType      = 'EXE'
  url           = "https://download.jetbrains.com/python/pycharm-community-2017.2.3.exe"
  silentArgs    = '/S'
  validExitCodes= @(0)
  checksum      = '0c05e26dd89bc45e4270ca22174e41148d23249d7fec770e0e3054b0cad60b67' 
  checksumType  = 'sha256'
}

 
Install-ChocolateyPackage @packageArgs
