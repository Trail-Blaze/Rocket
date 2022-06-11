@echo off
REM (c) 2022 Immanuel Garcia - AlexDev404

title Rocket Launcher v1.1 - Launching FortniteClient
REM SET /P arg="Fortnite PATH: "
REM echo %1 %2 %3 %4 %5 %6
if [%1]==[] goto help
if [%1]==[/?] goto help
if [%1]==[--help] goto help
if [%1]==[--z] goto help
goto launch

:launch

title STAGE 1

REM REPLACED %3 with 7a848a93a74ba68876c36C1c
REM UPDATE: REPLACED FLTOKEN WITH FLTOKENv15: a086959bb0acadb275ca7371
echo Starting Fortnite...
%1FortniteClient-Win64-Shipping.exe -AUTH_TYPE=epic -epicapp=Fortnite -epicportal -fltoken=%3 -fromfl=%2 -noeac -nobe -skippatchcheck -AUTH_LOGIN=%5@blaze.net -AUTH_PASSWORD=unused
goto injection


:injection 

title Rocket Launcher v1.1 - Injection
echo This window will close itself. Please wait...
timeout %6
watson-injects64_SEH %4.dll FortniteClient-Win64-Shipping.exe
goto EOF


:help
echo.
echo Rocket 1.1 - The Blaze Bootstrapper
echo ---------------------------------
echo.
echo ROCKET.BAT fn_path from_fl fltoken bypass username [delay]
echo.
echo Description:
echo    This utility assists in the connection of the Blaze backend to the FortniteClient
echo    Although this utility is mostly used for Blaze, it may be used for any Fortnite Private Server
echo    Backend.
echo.
echo Parameter List:
echo    fn_path     Required. Specifies the Fortnite binary path - The folder that holds the Fortnite 
echo                Executable FortniteClient.
echo.
echo    from_fl     Required. Specifies the value passed to the "-fromfl" argument when launching Fortnite.
echo                options include "eac" (Easy Anti-Cheat), "be" (BattlEye), and "none"
echo.
echo    fltoken     Required. The fltoken passed to Fortnite. Without this Fortnite WILL NOT open.
echo                For a full list of Fortnite FLTOKENs visit 
echo                https://github.com/zinx-YT/Fortnite-Fltokens-and-offsets/tree/main/Fltokens
echo.
echo    bypass      Required. The cURL bypass (or other bypass) filename (without the file extension)
echo                that is injected into Fortnite on startup. This may also be a path.
echo.
echo                The format of the bypass must be a DLL in order for this utility to work successfully.
echo                Example bypass: https://github.com/Trail-Blaze/Platinum
echo.
echo    username    The username used to "login" into Fortnite. This may be any value and is required.
echo.
echo    [delay]     Optional. The delay in seconds between launching Fortnite and injecting it. A delay is sometimes
echo                required as in later versions of Fortnite there is a lag between the initialization
echo                and the creation of the main process which is a necessity for the injection to work.
echo                successfully. Leave this argument empty if you do not require a delay.
echo.
echo NOTE: that if the bypass is a path that includes spaces, ensure that you surround this path in "quotes".
echo.
echo Example:
REM be, eac, none
echo    ROCKET "E:\Epic Games\Fortnite 15\FortniteGame\Binaries\Win64\" eac 87a0c99d9aa3ab5bb6a36C25 platinum Jake123
echo.

:EOF
