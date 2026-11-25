@echo off
title Build Retaining Wall Design (.exe)
echo ========================================================
echo   Retaining Wall Design - Windows EXE Builder
echo ========================================================
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js LTS from https://nodejs.org/ and run this script again.
    pause
    exit /b 1
)

echo [1/3] Installing dependencies (Electron + electron-builder)...
call npm install
if %errorlevel% neq 0 (
    echo [ERROR] npm install failed. Check your internet connection.
    pause
    exit /b 1
)

echo.
echo [2/3] Building Windows Installer and Portable EXE...
call npm run build:win
if %errorlevel% neq 0 (
    echo [ERROR] EXE build failed.
    pause
    exit /b 1
)

echo.
echo [3/3] Build completed! Check the "dist" folder for your .exe files.
pause
