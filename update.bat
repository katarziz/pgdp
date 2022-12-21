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

for /f %%i in ('git -C pgdp2223-tests rev-parse HEAD') do @set "local=%%i"
git fetch
for /f %%i in ('git -C pgdp2223-tests rev-parse @{u}') do @set "upstream=%%i"
if %local% == %upstream% (
	choice /c NY /n /t 5 /d N /m "No update found. Do you want to continue anyway? [Y/N]"
	if errorlevel 2 goto :update
	goto :finally
)

:update
git -C pgdp2223-tests pull
java -jar moveUtility.jar %key%

:finally
pause
exit