@echo off
SET geoinnsyn_source=C:\NOIS\ISY.GIS.GeoInnsyn\dist\geoinnsyn

rd /S /Q .\web\geoinnsyn
md .\web\geoinnsyn
xcopy /E /Y %geoinnsyn_source% .\web\geoinnsyn
xcopy /E /Y .\web\tmp .\web\geoinnsyn
