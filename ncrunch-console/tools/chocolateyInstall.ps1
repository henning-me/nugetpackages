

$packageName = 'ncrunch-console'
$url = 'http://downloads.ncrunch.net/NCrunch_Console_2.25.0.1.msi'
$checksum  = 'DFD0C3E34D438CA2203713D9FDAAD0AE8BD92C9D87E11D891CE187089965D643'

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
