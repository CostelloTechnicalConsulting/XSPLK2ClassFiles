@echo off

SET SPLUNK_HOME=C:\Splunk
SET APP_PKG_DIR="C:\Improving-your-Splunk-skills-master\Chapter 11"

cd %SPLUNK_HOME%\bin

splunk install app %APP_PKG_DIR%\OpsDataGen.spl -auth "admin:password"

splunk restart
