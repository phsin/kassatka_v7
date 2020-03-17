@echo off

copy IN\version.txt OUT\

cscript decompile_ert.js --ini-file decompile.ini 


perl correct_dlg.pl -d Src\OUT
perl CompressMetadata.pl -q -d Src\OUT

git status
gitk

rem Пересоберем ert прямо в репозитории
rem cscript decompile_ert.js --ini-file compile-ert.ini
rem compile.bat

rem pause
