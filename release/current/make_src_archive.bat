SET SEVENZIP=C:\Program Files\7-Zip
SET PDATE=C:\Program Files (x86)\pDate

"%PDATE%\pDate.exe" "\s\e\t \D\M\=b-d-Y" > tmp.bat
call tmp.bat
del tmp.bat
SET FILENAME=KrxImpExp-source-code-%DM%.zip

cd ..\..
del release\current\%FILENAME%
"%SEVENZIP%\7z.exe" a release\current\%FILENAME% -r -tzip build devdoc help locale release sample_meshes src -x!.svn -x!*.ncb -x!*.suo -x!*.user -x!*.db -x!*.zip -x!*.7z -x!*.exe
"%SEVENZIP%\7z.exe" d release\current\%FILENAME% install
cd release\current