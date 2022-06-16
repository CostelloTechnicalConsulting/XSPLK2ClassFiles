@echo off

powershell -ExecutionPolicy Bypass -File C:\XSPLK2ClassFiles\Scripts\ExtractONLCApp.ps1

c:\splunk\bin\splunk restart
