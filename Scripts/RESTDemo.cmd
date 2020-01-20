curl -k -u admin:password https://localhost:8089/services/search/jobs/ -d search="search sourcetype=access_* earliest=-7d"

curl -k -u admin:password https://localhost:8089/servicesNS/admin/search/saved/searches/

curl -u admin:password -k https://localhost:8089/servicesNS/admin/search/jobs/1576872034.551/results/ --get -d output_mode=json -d count=5