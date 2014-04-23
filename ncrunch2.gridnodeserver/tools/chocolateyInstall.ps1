$packageName = 'ncrunch2.gridnodeserver' 
$url = 'http://downloads.ncrunch.net/NCrunch_GridNodeServer_2.7.0.5.msi' 

$installerType = 'msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0) 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes