SET SEVENZIP=C:\Program Files\7-Zip

del *.7z
cd ..\..\videos

"%SEVENZIP%\7z.exe" a ..\release\videos\world_cs.7z -r -t7z world_cs.avi
"%SEVENZIP%\7z.exe" a ..\release\videos\replace_slot.7z -r -t7z replace_slot.avi
"%SEVENZIP%\7z.exe" a ..\release\videos\merge_models.7z -r -t7z merge_models.avi
"%SEVENZIP%\7z.exe" a ..\release\videos\import_dynmdl_ani.7z -r -t7z import_dynmdl_ani.avi
"%SEVENZIP%\7z.exe" a ..\release\videos\import_dynamic_model.7z -r -t7z import_dynamic_model.avi

cd ..\release\videos