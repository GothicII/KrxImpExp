@set XCPYOPT=/y /s /f

@xcopy "%KRXIMPEXP%\sample_meshes\*.3ds" "%BLENDER_DIR%\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\sample_meshes\" %XCPYOPT%
@xcopy "%KRXIMPEXP%\sample_meshes\*.3ds" "%KRXIMPEXP_INSTALL%\blender\%BLENDER_SHORTVER%\scripts\addons\KrxImpExp\sample_meshes\" %XCPYOPT%
