@ECHO off

if not exist SSG.jar (
    cmd /C download.bat
)

java -jar SSG.jar^
    --default-template index^
    --output-path build^
    --sources-path site^
    --template-path templates^
    --section doc

xcopy site\static build\static /E/I
