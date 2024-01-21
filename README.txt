ARCHIVAL NOTE: I mean it's just a bit rubbish innit? 

IMPORTANT NOTE: Only tested on Windows 10 (may not work on literally any other OS)

'Batch' stands for '.bat'

!! PLEASE INSPECT THE BATCH SCRIPT BEFORE EXECUTING IT, NEVER RUN SOMEONE ELSE'S CODE WITHOUT FIRST VERIFYING IT !!
To inspect a batch script, right click it and press "Edit".

To run the script, simply & quickly double-left click the "Replace" batch file, or right click then press "Open". (Pretty basic stuff)

The purpose of this script is to replace Roblox's current death sound with the related sound file called "ouch(.ogg)"
Default replacement is the "oof" sound, if you want to change it; then remove the 'ouch.ogg' in the ReplaceDeath folder and replace it with a file of the same name and format (ouch is the name, ogg is the format)

Note: Roblox's death sound goes to default every time Roblox updates, you'll need to run the script every time that happens
(this may seem inconvenient -- which it is -- but it's better than manually swapping out the files (which is the entire reason why I made this pesky li'l thing))

!! The darn thing won't work if any file-names are changed, so make sure all names are the same way they used to be !!

How it works:

The script (Replace.bat) checks your Start Menu folder (which holds all the programs that appear when you hit the Windows key) for the "Roblox Player" shortcut. Then it follows the shortcut to its origin, which digs deeper into the 'sounds' folder, where the old sound will be replaced with the 'ouch.ogg' in the script's parent directory.
