

$packageName = 'ncrunch-vs2012'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2012_2.25.0.1.msi'
$checksum  = '264A565E1826A2119E27F39B7DB0A6B845C6D6644828DA3CCBFF31F2B784B478'

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
