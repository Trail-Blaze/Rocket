@echo off
title STAGE 1
echo Attempting to launch Fortnite with path given...
echo DO NOT CLOSE THIS WINDOW
REM echo %1 %2 %3=%4 %5=%6 %7

REM REPLACED %5=%6 with %5=7a848a93a74ba68876c36C1c
REM UPDATE: REPLACED FLTOKEN WITH FLTOKENv15: a086959bb0acadb275ca7371

%1FortniteClient-Win64-Shipping.exe -AUTH_TYPE=epic -epicapp=Fortnite -epicportal %5=a086959bb0acadb275ca7371 %3=none -noeac %2 -skippatchcheck -AUTH_LOGIN=%7@blaze.net -AUTH_PASSWORD=unused
exit