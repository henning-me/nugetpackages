

$packageName = 'ncrunch-vs2008'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2008_2.26.0.1.msi'
$checksum  = '40AFCF5B05DD9B09CCCF38C41FCF472AA5178040A0BFE67EDE510ECF329A440E'

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
