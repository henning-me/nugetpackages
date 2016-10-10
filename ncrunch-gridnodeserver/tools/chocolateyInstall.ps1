

$packageName = 'ncrunch-gridnodeserver'
$url = 'http://downloads.ncrunch.net/NCrunch_GridNodeServer_2.27.0.3.msi'
$checksum  = 'C315D270B48FB450531E79802F7EDC4FBF75AAD65A8B6D0643959FDCB0365536'

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'MSI'
  url                    = $url
  checksum               = $checksum
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  validExitCodes         = @(0)  
  silentArgs             = '/quiet'
}
Install-ChocolateyPackage @packageArgs
