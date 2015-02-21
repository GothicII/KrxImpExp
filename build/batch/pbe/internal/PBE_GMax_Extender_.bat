@if "%1" == "exe" goto :CopyExe
@if "%1" == "dll" goto :CopyDll

:CopyExe
@set XCPYOPT=/y /s /f
@xcopy "%KRXIMPEXP_INTERMEDIATE%\GMaxExtender\%1\KrxGMaxExtender.exe" "%GMAXDIR%\" %XCPYOPT%
@if "%2" == "Debug" goto :EOF
@xcopy "%GMAXDIR%\KrxGMaxExtender.exe" "%KRXIMPEXP_INSTALL%\gmax\" %XCPYOPT%
@goto :EOF

:CopyDll
@set XCPYOPT=/y /s /f
@xcopy "%KRXIMPEXP_INTERMEDIATE%\GMaxExtenderDLL\%1\KrxGMaxExtender.dll" "%GMAXDIR%\" %XCPYOPT%
@if "%2" == "Debug" goto :EOF
@xcopy "%GMAXDIR%\KrxGMaxExtender.dll" "%KRXIMPEXP_INSTALL%\gmax\" %XCPYOPT%
@goto :EOF
