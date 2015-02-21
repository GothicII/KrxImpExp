@set XCPYOPT=/y /s /f

@xcopy "%KRXIMPEXP%\locale\*.*" "%BLENDER_DIR%\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\locale\" %XCPYOPT%
@xcopy "%KRXIMPEXP%\locale\*.*" "%KRXIMPEXP_INSTALL%\blender\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\locale\" %XCPYOPT%
