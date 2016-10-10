

$packageName = 'ncrunch-vs2012'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2012_2.27.0.3.msi'
$checksum  = '5657AEA0F32FDB471FFAAA2C7AE7EFE008335284CD523CF8DA9BFE93E697009F'

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
