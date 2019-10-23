@echo off
setlocal ENABLEDELAYEDEXPANSION

set /p mytext=Enter Code:
set ne=
set pos=0
:NextChar
	set /A c= %pos% %% 2
	if %c%==0 set ne=%ne%!mytext:~%pos%,1!
    set /a pos=pos+1
    if "!mytext:~%pos%,1!" NEQ "" goto NextChar
	echo The decoded code is: %ne%