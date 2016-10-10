

$packageName = 'ncrunch-vs2013'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2013_2.27.0.3.msi'
$checksum  = '05A46236A85E4D9095FFB641C5353B1D16EE23DBBB31B075DDA8D591834987E3'

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
