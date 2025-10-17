@echo off
echo ========================================
echo   LifeSync Backend Server
echo ========================================
echo.
echo Checking PostgreSQL connection...
echo.

REM Check if database exists, if not create it
psql -U postgres -lqt | findstr lifesync >nul
if errorlevel 1 (
    echo Database 'lifesync' not found. Creating...
    psql -U postgres -c "CREATE DATABASE lifesync;"
    if errorlevel 1 (
        echo Failed to create database. Please create it manually.
        echo Run: psql -U postgres
        echo Then: CREATE DATABASE lifesync;
        pause
        exit /b 1
    )
    echo Database created successfully!
) else (
    echo Database 'lifesync' found.
)

echo.
echo Starting server on http://localhost:8080
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

go run cmd\api\main.go
