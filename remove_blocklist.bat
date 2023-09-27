@echo off
setlocal enabledelayedexpansion

REM Specify the folder path containing the program blocklist files
set "blocklistFolder=C:\Path\to\Blocklist\Folder"

REM Iterate through each .txt file in the blocklist folder
for %%f in ("%blocklistFolder%\*.txt") do (
    echo Processing file: %%~nxf
    echo.

    REM Read each line in the blocklist file
    for /f "usebackq tokens=*" %%l in ("%%f") do (
        REM Remove the program from the firewall blocklist
        echo Removing program: %%l
        netsh advfirewall firewall delete rule name="%%l"
    )

    echo.
)

echo All programs have been removed from the firewall blocklist.
pause
