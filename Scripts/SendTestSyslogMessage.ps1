# Send a test syslog message
Send-SyslogMessage -Server 127.0.0.1 -ApplicationName DemoApp -Severity Informational -Facility syslog -Message "This is a test syslog message"

#Test with: source="udp:514" sourcetype="syslog"