@echo off
Rem This is used to to change the compatibility mode of a program by adding a registry setting.
Rem Place this file in C:\Users\Default\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\ so it is created for each new profile. 
Rem The second line deletes the script from the users startup folder after the account is created. 

REG ADD "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v C:\Users\%username%\AppData\Roaming\[myprogamfolder]\[myprogram].exe /t REG_SZ /d "~ WIN8RTM"

(goto) 2>nul & del "%~f0"