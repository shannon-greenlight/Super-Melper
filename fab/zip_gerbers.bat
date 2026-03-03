@echo off
del .\super_melper_gerbers.zip
"C:\Program Files\7-Zip\7z.exe" a .\super_melper_gerbers.zip .\gerber\*.gbr
"C:\Program Files\7-Zip\7z.exe" a .\super_melper_gerbers.zip .\gerber\*.gbrjob
"C:\Program Files\7-Zip\7z.exe" a .\super_melper_gerbers.zip .\gerber\*.drl
pause
