

$packageName = 'ncrunch-vs2010'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2010_2.27.0.3.msi'
$checksum  = '880e1be951796d7c8879cce00b8a09c71581963ecf0b077b5cf8de8777453541'

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
