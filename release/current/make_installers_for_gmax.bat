@cls
SET NSISDIR=C:\Program Files (x86)\NSIS\unicode
"%NSISDIR%\makensis.exe" /DTYPEVER=gmax      "..\..\src\InstallerScript\KrxImpExp.nsi"
@pause
