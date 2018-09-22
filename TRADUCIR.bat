@echo off
Title UnderProjectNX
set /p path="Drag the nsp file here: "
tools\hactool.exe "%path:"=%" -k keys.dat -x --intype=pfs0 --pfs0dir="%CD%\tools\extracted"
tools\titlekey.exe
set /p var=<tools\final.txt
tools\hactool.exe -k keys.dat "%CD%\tools\extracted\eddd7cfa3cdca6623f31cf2f20e9257e.nca" --titlekey="%var%" --romfsdir="%CD%\tools\extracted\romfs"
if not exist "%CD%\READY_LAYEREDFS" (
mkdir "%CD%\READY_LAYEREDFS\010080b00ad66000\romfs"
)
pause