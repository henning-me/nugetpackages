

$packageName = 'ncrunch-gridnodeserver'
$url = 'http://downloads.ncrunch.net/NCrunch_GridNodeServer_2.25.0.1.msi'
$checksum  = '747E55706AA514518DABAA9E027FD17F4CC694B887AE1AB3881D9F4215C2A40A'

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
