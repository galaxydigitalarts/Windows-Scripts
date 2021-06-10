@ECHO OFF

ECHO Install desired program.

\\172.xxx.xxx.xxx\[program file path from network location]\[myprogram].exe

ECHO  ----------------------------------------------------

ECHO copying progam files from User program was installed under to Default User folder.

ECHO  ----------------------------------------------------

robocopy /E C:\Users\[user where program was installed under]\AppData\Roaming\[program folder] C:\Users\Default\AppData\Roaming\[program folder]

ECHO  ----------------------------------------------------

ECHO  Copy the shortcuts

xcopy C:\Users\[user where program was installed]\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"[program shortcut]" C:\Users\Default\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\

ECHO  ----------------------------------------------------

xcopy C:\Users[user where program was installed]\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\"[program shortcut]" C:\Users\Default\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

ECHO  ----------------------------------------------------

ECHO Done copying files. =:0)

ECHO  ----------------------------------------------------

Echo: Copy file to edit the registry for each new user to the Default User startup folder.

xcopy \\\172.xxx.xxx.xxx\[network path to file to copy to pc. Or use local path]compatibliityModeSigniant.bat C:\Users\Default\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

Echo: Done copying file.

ECHO  ----------------------------------------------------


ECHO Done modifying the registry. =:0)


PAUSE