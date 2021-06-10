@echo off
Rem This is used to delete files from a selected folder. Change the file path to the desired folder, then select the age of files to delete by changing the -#
ForFiles /p "C:\test" /s /d -5 /c "cmd /c del @file"
echo "Program Running"