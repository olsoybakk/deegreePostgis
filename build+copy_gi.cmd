@echo off
SET geoinnsyn_source=C:\NOIS\ISY.GIS.GeoInnsyn\dist\geoinnsyn
SET mypath=%~dp0
cd %geoinnsyn_source%\..\..
call npm run docker

cd "%mypath:~0,-1%"
rd /S /Q .\web\geoinnsyn
md .\web\geoinnsyn
xcopy /E /Y %geoinnsyn_source% .\web\geoinnsyn
xcopy /E /Y .\web\tmp .\web\geoinnsyn

pause