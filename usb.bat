@echo off
title Nates USB debugger
color 0a
:start
cls
echo COMMANDS
echo.
echo cmd (cmd)
echo notepad (notepad)
echo ar (advanced run)
echo ph (process hacker)
echo geek (geek uninstaller)
echo.
set /p Client= PC@&$/
goto %Client% 


:cmd
cls
cd %WINDIR%
cd system32
start /max cmd.exe 
pause
cls
goto start 

:notepad
cls
cd %WINDIR%
cd system32
start /max notepad.exe
pause
cls
goto start


:ar
cls
cd %USERPROFILE%
curl -L https://www.nirsoft.net/utils/advancedrun-x64.zip > run.zip 
tar -xf run.zip
advancedrun
pause
cls
echo move the files from ur user folder now if you dont want them deled
pause
cls
del advancedrun.exe
del advancedrun.chm
del readme.txt
del advancedrun.cfg
del run.zip
cls
goto start 

:ph
cls
cd %USERPROFILE%
curl -L https://versaweb.dl.sourceforge.net/project/processhacker/processhacker2/processhacker-2.39-bin.zip > hack.zip 
tar -x -f hack.zip
del hack.zip
rmdir x86 /q /s
del copyright.txt
del license.txt
del readme.txt
del CHANGELOG.txt
cd x64 
processhacker
pause
cls
echo move the files from ur user folder now if you dont want them deled
pause
cls
cd %userprofile%
rmdir x64 /s /q
cls
goto start 

:geek
cls
cd %USERPROFILE%
curl -L https://geekuninstaller.com/geek.zip > geek.zip 
tar -x -f geek.zip 
del geek.zip
geek
pause
cls
echo move the files from ur user folder now if you dont want them deled
pause
cls
del geek.exe
cls
goto start
: : Hi