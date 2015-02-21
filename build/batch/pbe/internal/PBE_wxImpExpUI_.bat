@if "%1"    == "Debug"           goto :CopyPoint
@if "%1"    == "Release"         goto :CopyPoint
@if "%1 %2" == "Unicode Debug"   goto :CopyPoint
@if "%1 %2" == "Unicode Release" goto :CopyPoint

@echo Syntax: PBE_wxImpExpUI cfg
@echo where
@echo     cfg is either "Debug" or "Release" or "Unicode Debug" or "Unicode Release", without quotes.
@goto :EOF

:CopyPoint
@set XCPYOPT=/y /s /f
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%GMAXDIR%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_5%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_6%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_9%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_9_X64%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_11%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_11_X64%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_12%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_12_X64%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_14%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_14_X64%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_15%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%MAXDIR_15_X64%\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%BLENDER_DIR%\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%C4DDIR_96%\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%C4DDIR_100%\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%C4DDIR_105%\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%C4DDIR_120%\plugins\KrxImpExp\" %XCPYOPT%

@if "%1"    == "Debug"         goto :EOF
@if "%1 %2" == "Unicode Debug" goto :EOF

@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\gmax\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max5\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max6\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max9\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max9_x64\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max11\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max11_x64\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max12\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max12_x64\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max14\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max14_x64\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max15\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\max15_x64\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\blender\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\c4d96\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\c4d100\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\c4d105\plugins\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP_INTERMEDIATE%\wxImpExpUI\%1 %2\wxImpExpUI.exe" "%KRXIMPEXP_INSTALL%\c4d120\plugins\KrxImpExp\" %XCPYOPT%
