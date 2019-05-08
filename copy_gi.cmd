rd /S /Q .\web\geoinnsyn
md .\web\geoinnsyn
xcopy /E /Y C:\ISY.Git\ISY.GIS.GeoInnsyn\ISY.GIS.GeoInnsyn\dist\geoinnsyn .\web\geoinnsyn
xcopy /E /Y .\web\tmp .\web\geoinnsyn
