@echo off

if not exist .config goto :getkey
if exist .config goto :haskey

:getkey
set /p key="please enter your TUM-Kuerzel: "
echo %key% > ".config"
goto :continue
:haskey
set /p key=<.config

:continue
echo running the program for %key%

git -C pgdp2223-tests pull
java -jar moveUtility.jar %key%

pause