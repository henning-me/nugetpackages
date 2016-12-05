

$packageName = 'ncrunch-vs2013'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2013_3.1.0.1.msi'
$checksum  = '8fc0dd3fc9a863e1a5433af7d711a9292832f51db2ac5ca9e6f1cd4721be2d49'

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
