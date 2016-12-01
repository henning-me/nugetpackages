

$packageName = 'ncrunch-vs2017'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2017_2.27.0.3.msi'
$checksum  = '9cb53d1c7cb19b85a5b45ad915134a9b8a861868d6fae71be4f5398245ab9dd7'

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
