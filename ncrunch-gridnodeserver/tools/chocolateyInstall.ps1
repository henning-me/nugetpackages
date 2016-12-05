

$packageName = 'ncrunch-gridnodeserver'
$url = 'http://downloads.ncrunch.net/NCrunch_GridNodeServer_3.1.0.1.msi'
$checksum  = 'e0efd5a6080e56b74bb66735c2e6dff36837b99e62ae23e65f9631408d8b1258'

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
