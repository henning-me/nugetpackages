

$packageName = 'ncrunch-vs2017'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2017_3.1.0.1.msi'
$checksum  = 'b03bc845d41238a35b3bf44cde28b8506271c5ad5f8572afcc234eb939e0fc05'

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
