param($Name = $null)
cd $PSScriptRoot

$options = @{
    Timeout = 10
    Threads = 10
    Push    = $true
}

Update-AUPackages -Name $Name -Options $options | Export-CliXML update_info.xml
