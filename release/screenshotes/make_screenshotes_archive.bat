SET SEVENZIP=C:\Program Files\7-Zip

SET FILENAME=KrxImpExp-screenshotes.zip

del %FILENAME%
cd ..\..\screenshotes
"%SEVENZIP%\7z.exe" a ..\release\screenshotes\%FILENAME% -r -tzip *.* -x!*.svn -x!*.db
cd ..\release\screenshotes