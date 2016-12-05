

$packageName = 'ncrunch-vs2008'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2008_3.1.0.1.msi'
$checksum  = '73cc90f2181c82d2448c505e31606191a60896109412db6ec50e215a06e67af4'

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
