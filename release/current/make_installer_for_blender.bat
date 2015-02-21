@cls
SET NSISDIR=C:\Program Files (x86)\NSIS\unicode
"%NSISDIR%\makensis.exe" /DTYPEVER=blender   "..\..\src\InstallerScript\KrxImpExp.nsi"
@pause
