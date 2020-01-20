@echo off


SET APP_NAME=operational_intelligence
SET SPLUNK_HOME=C:\Splunk
SET APP_PKG_DIR=C:\XSPLK2ClassFiles\Labfiles\05MachineLearning\Solution
SET APP_LOCATION=%SPLUNK_HOME%\etc\apps\%APP_NAME%

cd %SPLUNK_HOME%\bin

splunk install app %APP_PKG_DIR%\%APP_NAME%.spl -auth "admin:password" -update

:: Patch to move from default to local
:: Create directory structure
mkdir %APP_LOCATION%\local
mkdir %APP_LOCATION%\local\data
mkdir %APP_LOCATION%\local\data\ui
mkdir %APP_LOCATION%\local\data\ui\views

:: Saved searches (reports)
cd %APP_LOCATION%\local\
move %APP_LOCATION%\default\savedsearches.conf

:: Dashboards
cd %APP_LOCATION%\local\data\ui\views\
move %APP_LOCATION%\default\data\ui\views\*.xml 

cd %SPLUNK_HOME%\bin

splunk restart
