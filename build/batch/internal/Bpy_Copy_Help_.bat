@if "%1" == "" goto :PlanCopy
goto :DoCopy

:PlanCopy
@call "%0" all3d
@call "%0" blender
@goto :EOF

:DoCopy
@set XCPYOPT=/y /s /f
@xcopy "%KRXIMPEXP%\help\%1"   "%BLENDER_DIR%\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\help\" %XCPYOPT%
@xcopy "%KRXIMPEXP%\help\%1"   "%KRXIMPEXP_INSTALL%\blender\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\help\" %XCPYOPT%
