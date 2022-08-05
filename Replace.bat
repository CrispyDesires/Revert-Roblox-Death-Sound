@echo OFF

GOTO EndComment
Hello!!!! Here are some notes:
I MILDLY DISLIKE BATCH, IT'S THE SILLIEST THING EVER!!! TO GRAB A THING'S PARENT, THE VARIABLE IS CALLED "%~dp0" WHYYYY
:EndComment

:: Junk below grabs dependencies in this order: the script's parent/folder, the sound that will replace the old, and the script that grabs the Roblox path
SET parent=%~dp0
SET newsound=%parent%ouch.ogg
SET strings=%parent%\StringsAttached.bat

:: first one grabs the Roblox path from the other script.
for /f "delims=" %%i in ('%strings%') do set target=%%i
for %%a in ("%target%") do set "FINAL=%%~dpa"
:: second one gets the Roblox path's parent (aka the thing that contains all of the files, including the sounds!!!)

SET FINAL=%FINAL%content\sounds
SET sound=%FINAL%\ouch.ogg
:: FINAL FOLDER!!!! Also the old Roblox sound that'll be deleted

echo %sound%
echo %newsound%
:: displays both; the old Roblox sound's filepath, and the new one.

set "reply=y"
set /p "reply=Are you sure you want to replace Roblox's death sound? [Y/N]: "
if /i not "%reply%" == "y" goto :eof
REM ripped straight from stackoverflow... thank you!!!
REM gives a Y(es) or N(o) prompt

echo Replacing old sound with new, please wait...
:: makes me feel fancy

Copy %newsound% %FINAL%
:: REPLACES THE OLD SOUND WITH THE NEW SOUND, WOO!!!