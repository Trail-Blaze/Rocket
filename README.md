<!---
# Kickstart
The binaries used to connect Blaze to Fortnite

## How to Use?
Take a look at this [article](https://github.com/Trail-Blaze/dynamite-core/wiki/How-to-Use-the-Supporting-Binaries) on the usage of these binaries.
--->

## Rocket 1.1 - The Blaze Bootstrapper CLI

```js
ROCKET.BAT fn_path from_fl fltoken bypass username [delay]
```

### Description

This utility assists in the connection of the Blaze backend to the FortniteClient
Although this utility is mostly used for Blaze, it may be used for any Fortnite Private Server
Backend.

### Parameter List

    `fn_path`   Required. Specifies the Fortnite binary path - The folder that holds the Fortnite 
                Executable FortniteClient.

    `from_fl`   Required. Specifies the value passed to the "-fromfl" argument when launching Fortnite.
                options include "eac" (Easy Anti-Cheat), "be" (BattlEye), and "none"

    `fltoken`   Required. The fltoken passed to Fortnite. Without this Fortnite WILL NOT open.
                For a full list of Fortnite FLTOKENs visit 
                https://github.com/zinx-YT/Fortnite-Fltokens-and-offsets/tree/main/Fltokens

    `bypass`    Required. The cURL bypass (or other bypass) filename (without the file extension)
                that is injected into Fortnite on startup. This may also be a path.

                The format of the bypass must be a DLL in order for this utility to work successfully.
                Example bypass: https://github.com/Trail-Blaze/Platinum

    `username`  The username used to "login" into Fortnite. This may be any value and is required.

    `[delay]`   Optional. The delay in seconds between launching Fortnite and injecting it. A delay is
                sometimes required as in later versions of Fortnite there is a lag between the initialization
                and the creation of the main process which is a necessity for the injection to work.
                successfully. Leave this argument empty if you do not require a delay.

 **NOTE:** that if the bypass is a path that includes spaces, ensure that you surround this path in "quotes".

### Example

```js
    ROCKET "E:\Epic Games\Fortnite 15\FortniteGame\Binaries\Win64\" eac 87a0c99d9aa3ab5bb6a36C25 platinum Jake123 18
```
