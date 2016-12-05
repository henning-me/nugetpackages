

$packageName = 'ncrunch-vs2010'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2010_3.1.0.1.msi'
$checksum  = 'd8d7cfb99ed5c4eaa36f7ef95129cc230ad9b31b172da30c6a8fec3af8882b58'

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
