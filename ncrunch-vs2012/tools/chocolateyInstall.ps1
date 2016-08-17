

$packageName = 'ncrunch-vs2012'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2012_2.26.0.1.msi'
$checksum  = '2E5D45C9B19ABE0FAE6652F40590440FCA7AF8FBD2372BED68877A7CC1D13647'

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
