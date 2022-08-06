@echo OFF

:: Hello!!!! Here are some notes:
:: I MILDLY DISLIKE BATCH, IT'S THE SILLIEST THING EVER!!! TO GRAB A THING'S PARENT, THE VARIABLE IS CALLED "%~dp0" WHYYYY

:: Junk below grabs dependencies in this order: the script's parent/folder, the sound that will replace the old
SET parent=%~dp0

set "reply=y"
 set /p "reply=Are you sure you want to replace Roblox's death sound? [Y/N]: "
   if /i not "%reply%" == "y" echo Aborted... & goto :eof
 REM gives a Y(es) or N(o) prompt
 REM if no, then it'll delete the shortcutpath.txt (if it exists) and cancel the script

type C:\Users\%username%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Roblox\"Roblox Player".lnk | find "\" | find "." > %parent%shortcutpath.txt
 SET shortcutpath=%parent%shortcutpath.txt
:: Creates a .txt file for the shortcut path (also creates a variable)

:: first one grabs the Roblox path from the other script.
for /f "delims=" %%i in (%shortcutpath%) do set target=%%i
for %%a in ("%target%") do set "FINAL=%%~dpa"
:: second one gets the Roblox path's parent (aka the thing that contains all of the files, including the sounds!!!)

SET FINAL=%FINAL%content\sounds
 SET sound=%FINAL%\ouch.ogg
 SET newsound=%parent%ouch.ogg
:: Sets the final folder, and gets both sounds

echo Replacing old sound with new, please wait...
:: makes me feel fancy

Copy %newsound% %sound%
del %shortcutpath%
:: REPLACES THE OLD SOUND WITH THE NEW SOUND, WOO!!!
:: also deletes the .txt used to get the shortcut path