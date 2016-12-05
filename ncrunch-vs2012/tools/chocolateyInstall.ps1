

$packageName = 'ncrunch-vs2012'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2012_3.1.0.1.msi'
$checksum  = '736ed3b60981dcf07aec6b67dbffe7b9b55df754926af5d7524d98568a3a2e61'

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
