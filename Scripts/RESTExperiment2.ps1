$url = 'https://localhost:8089/services/search/jobs/'
$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential("admin","password")
$res = $wc.UploadString($url,'search="search sourcetype=access_* earliest=-7d"')
# $wc.DownloadString($url)

Write-Host $res