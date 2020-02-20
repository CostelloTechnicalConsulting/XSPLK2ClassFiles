@echo off

:: Install ML Toolkit
SET APP_NAME=splunk-machine-learning-toolkit_500
SET SPLUNK_HOME=C:\Splunk
SET APP_PKG_DIR=C:\XSPLK2ClassFiles\Apps
SET APP_LOCATION=%SPLUNK_HOME%\etc\apps\%APP_NAME%

cd %SPLUNK_HOME%\bin

splunk install app %APP_PKG_DIR%\%APP_NAME%.tgz -auth "admin:password"

splunk restart
