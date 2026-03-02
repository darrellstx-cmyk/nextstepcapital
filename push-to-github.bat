@echo off
cd /d "%~dp0"

echo ================================================
echo   Next Step Capital Group - Push to GitHub
echo ================================================
echo.

set /p MSG="Enter a short description of your changes: "

if "%MSG%"=="" set MSG=Update website files

git add .
git commit -m "%MSG%"
git push origin main

echo.
if %ERRORLEVEL%==0 (
    echo SUCCESS - Your changes are now live on GitHub!
) else (
    echo Something went wrong. Check the messages above.
)

echo.
pause
