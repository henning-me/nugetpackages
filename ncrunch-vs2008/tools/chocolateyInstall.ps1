

$packageName = 'ncrunch-vs2008'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2008_2.25.0.1.msi'
$checksum  = '51EE79A6FD83408D49AC92C466E8D9EF96CAA70F0272F73B36453CA69F4ED07E'

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
