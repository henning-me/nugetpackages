

$packageName = 'ncrunch-console'
$url = 'http://downloads.ncrunch.net/NCrunch_Console_2.27.0.3.msi'
$checksum  = '515688D77485BC1672902E0A0E2C6D4B3C2786287713197D138AAE8AE5BC6503'

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
