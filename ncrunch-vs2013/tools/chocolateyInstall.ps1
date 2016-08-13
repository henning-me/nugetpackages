

$packageName = 'ncrunch-vs2013'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2013_2.25.0.1.msi'
$checksum  = '3EC8BF574586F3814DC4E881A341790C019D6E3D308432FCB424D3220DDA1FC8'

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
