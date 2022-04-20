@echo off
title ATTEMPTING TO LAUNCH CLIENT
REM SET /P arg="Fortnite PATH: "
REM echo %1 %2 %3=%4 %5=%6 %7 %8
start fn.bat %1 %2 %3=%4 %5=%6 %8
title KICKSTART! [STAGE 2]
echo This window will close itself. Please wait...
timeout 54
watson-injects64_SEH %7.dll FortniteClient-Win64-Shipping.exe
exit
