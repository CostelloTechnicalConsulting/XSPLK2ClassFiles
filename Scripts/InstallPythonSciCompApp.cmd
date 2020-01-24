@echo off

:: Install Python for Scientific Computing
SET APP_NAME=python-for-scientific-computing-for-windows-64-bit_200
SET SPLUNK_HOME=C:\Splunk
SET APP_PKG_DIR=C:\XSPLK2ClassFiles\Apps
SET APP_LOCATION=%SPLUNK_HOME%\etc\apps\%APP_NAME%

cd %SPLUNK_HOME%\bin

splunk install app %APP_PKG_DIR%\%APP_NAME%.tgz -auth "admin:password"

splunk restart
