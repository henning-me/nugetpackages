

$packageName = 'ncrunch-console'
$url = 'http://downloads.ncrunch.net/NCrunch_Console_3.1.0.1.msi'
$checksum  = '6ae8f90318b3291b5899887af43ee0e5fa42175976cdbdbb6f7ac0ee14117ea6'

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
