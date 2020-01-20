@echo off

SET SPLUNK_HOME=C:\Splunk
SET APP_PKG_DIR=C:\XSPLK2ClassFiles\Apps
SET INSTLL_DIR=C:\XSPLK2ClassFiles\Installers

cd %SPLUNK_HOME%\bin

splunk install app %APP_PKG_DIR%\splunk-db-connect_320.tgz -auth "admin:password"

xcopy /Y %INSTLL_DIR%\sqljdbc_4.2\enu\jre8\sqljdbc42.jar %SPLUNK_HOME%\etc\apps\splunk_app_db_connect\drivers

splunk restart
