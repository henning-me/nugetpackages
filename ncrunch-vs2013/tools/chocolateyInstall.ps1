$packageName = 'ncrunch-vs2013'
$url = 'http://downloads.ncrunch.net/NCrunch_VS2013_2.25.0.1.msi'

$installerType = 'msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
