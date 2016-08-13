import-module au

$releases = 'https://www.ncrunch.net/'
$vsVersion = '2010'
$name = "VS$($vsVersion)"

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases #could use: 'https://api.github.com/repos/dnGrep/dnGrep/releases/latest' | select -expand Content | ConvertFrom-Json | select name, assets_url
    
    $re1 = 'latest version (\d.\d\d) \('
    $latestVersion = $download_page | Select-String -pattern $re1 | %{$_.matches} | %{$_.groups[1].Value}

    $detailPage = Invoke-WebRequest -Uri $releases'/download/getMsi?version='$latestVersion'&vs='$vsVersion

    $re2 =  "http:\/\/downloads\.ncrunch\.net\/NCrunch_$($name)_(\d+).(\d+).\d+.(\d+).msi"
    $matches2 = $detailPage | Select-String -pattern $re2 | %{$_.matches}

    $url   = $matches2 | %{$_.Value}    
    $version = "$($matches2.Groups[1].Value).$($matches2.Groups[2].Value).$($matches2.Groups[3].Value)$($extraversion)"
    return @{ URL  = $url; Version = $version }
}

$download_page = Invoke-WebRequest -Uri $releases

update -ChecksumFor 32