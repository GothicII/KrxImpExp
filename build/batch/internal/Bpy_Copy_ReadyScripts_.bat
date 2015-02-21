@set XCPYOPT=/y /s /f

@xcopy "%KRXIMPEXP%\src\BlenderScripts\*.py"       "%BLENDER_DIR%\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\" %XCPYOPT%
@xcopy "%KRXIMPEXP%\src\BlenderScripts\*.py"       "%KRXIMPEXP_INSTALL%\blender\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\" %XCPYOPT%
