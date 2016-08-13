

$packageName = 'ncrunch-vs2010'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2010_2.25.0.1.msi'
$checksum  = '6C41CEFA45A46308109DD64BBD64425C0F95EB23FB7FCC71779EF5CB3B52A867'

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
