@echo off
Title UnderProjectNX
set /p path="Arrastra el archivo nsp aqui: "
tools\hactool.exe "%path:"=%" -k keys.dat -x --intype=pfs0 --pfs0dir="%CD%\tools\extracted"
cd tools
titlekey.exe
cd ..
set /p var=<tools\final.txt
tools\hactool.exe -k keys.dat "%CD%\tools\extracted\eddd7cfa3cdca6623f31cf2f20e9257e.nca" --titlekey="%var%" --romfsdir="%CD%\tools\extracted\romfs"
if not exist "%CD%\READY_LAYEREDFS" (
mkdir "%CD%\READY_LAYEREDFS\010080b00ad66000\romfs"
)
COPY %CD%\tools\extracted\romfs\game.win %CD%\READY_LAYEREDFS\010080b00ad66000\romfs
echo Applying Patch %progress%
xdelta3.exe -d -vfs "game.win" "game Patch file.vcdiff" ".\READY_LAYEREDFS\game.win"
pause
