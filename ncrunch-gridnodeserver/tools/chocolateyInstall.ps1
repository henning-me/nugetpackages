

$packageName = 'ncrunch-gridnodeserver'
$url = 'http://downloads.ncrunch.net/NCrunch_GridNodeServer_2.26.0.1.msi'
$checksum  = 'DD7D7C82429A8F7F693EC2CBF86F9432D0A73C19201CA295DC91ED6A9A87C934'

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
