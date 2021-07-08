:: list the hostnames separated by a space.

set hostnames=[hostname1 hostname3 etc.]

ECHO Disabling the print spooler

ECHO ---------------------------

:: This example stops and disabled the print spooler. Replace with whichever service you want disabled.
 
for %%i in (%hostnames%) do (
winrs -r:%%i "sc stop "spooler" & sc config "spooler" start=disabled"
)

ECHO ---------------------------

ECHO Done

PAUSE
