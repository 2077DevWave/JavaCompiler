@echo off
if "%1"=="" (
    echo Usage: myapp.bat [JavaFileName]
    exit /b 1
)

set filename=%1

rem Check if the file exists
if not exist %filename%.java (
    echo Error: %filename%.java not found.
    exit /b 1
)

rem Compile Java file
javac %filename%.java
if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b 1
)

rem Run Java program
java %filename%
