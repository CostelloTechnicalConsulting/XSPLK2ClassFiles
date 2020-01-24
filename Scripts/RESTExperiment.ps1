$User = "admin"
$PWord = ConvertTo-SecureString -String "password" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

Invoke-WebRequest -UseBasicParsing -Method POST -Uri "https://localhost:8089/services/search/jobs/" -Credential $Credential -Body 'search="search sourcetype=access_* earliest=-7d"'