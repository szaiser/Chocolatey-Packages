$packageArgs = @{
  packageName   = 'PyCharm-community'
  fileType      = 'EXE'
  url           = "https://download.jetbrains.com/python/pycharm-community-$env:ChocolateyPackageVersion.exe"
  silentArgs    = '/S'
  validExitCodes= @(0)
  checksum      = 'cf3eb25ccd4fc25b2f91dd7bdd031d5d195e98c2735898ea608f01baa0bc9b5d'
  checksumType  = 'sha256'
}

 
Install-ChocolateyPackage @packageArgs
