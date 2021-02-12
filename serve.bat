@ECHO off

if not exist SSG.jar (
    cmd /C download.bat
)

java -jar SSG.jar serve^
    --output-path build
