

$packageName = 'ncrunch-vs2015'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2015_3.1.0.1.msi'
$checksum  = '8c3c1a62ae555a0d14d0b0242128d915b46bcc7e01afd5fed1bdc157b441e7dc'

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
