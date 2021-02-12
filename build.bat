@ECHO off

if not exist SSG.jar (
    cmd /C download.bat
)

java -jar SSG.jar build^
    --default-template index^
    --output-path build^
    --sources-path site^
    --template-path templates^
    --section doc

xcopy site\static build\static /E/I

echo %cmdcmdline% | findstr /i /c:"%~nx0" >NUL 2>&1 && set standalone=1

if defined standalone (
    echo.
    PAUSE
)
