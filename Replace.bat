@echo OFF

SET parent=%~dp0
:: Gets the parent directory

set "reply=y"
 set /p "reply=Are you sure you want to replace Roblox's death sound? [Y/N]: "
   if /i not "%reply%" == "y" echo Aborted... & goto :eof
 :: gives a Y(es)/N(o) prompt
 :: if no, then it'll delete the shortcutpath.txt (if it exists) and cancel the script

type C:\Users\%username%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Roblox\"Roblox Player".lnk | find "\" | find "." > %parent%shortcutpath.txt
 SET shortcutpath=%parent%shortcutpath.txt
:: Creates a .txt file for the shortcut path (also creates a variable)

for /f "delims=" %%i in (%shortcutpath%) do set target=%%i
for %%a in ("%target%") do set "FINAL=%%~dpa"
:: gets the shortcut path from the txt

SET FINAL=%FINAL%content\sounds
 SET oldsound=%FINAL%\ouch.ogg
 SET newsound=%parent%ouch.ogg
:: Sets the final folder, and gets both sounds

echo Replacing old sound with new, please wait...
:: makes me feel fancy

Copy %newsound% %oldsound%
del %shortcutpath%
:: REPLACES THE OLD SOUND WITH THE NEW SOUND, WOO!!!
:: also deletes the .txt used to get the shortcut path
