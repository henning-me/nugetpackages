

$packageName = 'ncrunch-vs2013'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2013_2.26.0.1.msi'
$checksum  = 'B04C5EAD71F5EA007F259438BBEFEEEBDE484AE830D21ED5D8635DC4BC049F6F'

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
