REM this batch allow you to check if your current session has admin previleges.
@echo off

NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected!
) ELSE (
    ECHO NOT AN ADMIN!
    EXIT /B 1
)
