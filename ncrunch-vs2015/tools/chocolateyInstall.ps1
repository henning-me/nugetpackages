

$packageName = 'ncrunch-vs2015'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2015_2.26.0.1.msi'
$checksum  = '65533DC65BD76CC3A395DCFCFF2D7019A5A66D1A4B7D557AB227350B52055ABB'

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
