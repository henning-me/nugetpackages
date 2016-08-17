

$packageName = 'ncrunch-console'
$url = 'http://downloads.ncrunch.net/NCrunch_Console_2.26.0.1.msi'
$checksum  = '3F5606EB6178B21BA1275A85261740E71DD928BC40DBD0047BB6BB484D555853'

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
