

$packageName = 'ncrunch-vs2010'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2010_2.26.0.1.msi'
$checksum  = 'D908FFE4C917B7343D8C263C6DE0F6B00C0358DAD4FD64C6BFBEE4FBDF15C113'

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
