SET JOBSID=1579887987.231


curl -k -u admin:password https://localhost:8089/services/search/jobs/ -d search="search sourcetype=access_* earliest=-7d"

pause

curl -k -u admin:password https://localhost:8089/servicesNS/admin/search/saved/searches/

pause

:: curl -u admin:password -k https://localhost:8089/servicesNS/admin/search/jobs/%JOBSID%/results/ --get -d output_mode=json -d count=5

:: pause