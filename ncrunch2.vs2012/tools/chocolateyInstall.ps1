$packageName = 'ncrunch2.vs2012'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2012_2.14.0.8.msi'

$installerType = 'msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
