ECHO Adding New Admin User

@ECHO OFF
net user [username] [password] /add
net localgroup [membership group] /add

PAUSE

