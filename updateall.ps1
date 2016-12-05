param($Name = $null)

import-module au

cd $PSScriptRoot

$options = @{
    Timeout = 10
    Threads = 10
    #Push    = $true
}

#Update-AUPackages -Name $Name -Options $options | Export-CliXML update_info.xml
Update-AUPackages -Name $Name  | Export-CliXML update_info.xml
