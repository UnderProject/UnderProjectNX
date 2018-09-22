@echo off
Title UnderProjectNX
set /p path="Drag the nsp file here: "
tools\hactool.exe "%path:"=%" -k keys.ini -x --intype=pfs0 --pfs0dir="%CD%\tools\extracted"
tools\hactool.exe -k keys.dat "%CD%\tools\extracted\eddd7cfa3cdca6623f31cf2f20e9257e.nca" --titlekey="E569D60DE352C21297DA0E66CFDFD08F" --romfsdir="%CD%\tools\extracted\romfs" --exefsdir="%CD%\tools\extracted\exefs"
if not exist "%CD%\READY_LAYEREDFS" (
mkdir "%CD%\READY_LAYEREDFS\010080b00ad66000\romfs"
)
pause