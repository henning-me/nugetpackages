

$packageName = 'ncrunch-vs2008'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2008_2.27.0.3.msi'
$checksum  = 'a0a7bf2785c6245ca2b65a72d66f2b67ed70f0ad96f8bf932a3958eaa7459b00'

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
