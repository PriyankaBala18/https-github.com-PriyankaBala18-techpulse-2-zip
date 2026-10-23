@echo off
title TechPulse Launcher
echo ==============================================
echo        Starting TechPulse Full-Stack...
echo ==============================================

echo [1/3] Starting AI Microservice on port 8000...
start "TechPulse - AI Service (Port 8000)" cmd /k "cd /d %~dp0ai && py -m uvicorn main:app --port 8000"
timeout /t 2 >nul

echo [2/3] Starting Backend Server on port 4000...
start "TechPulse - Backend Server (Port 4000)" cmd /k "cd /d %~dp0backend && npm.cmd run dev"
timeout /t 2 >nul

echo [3/3] Starting Frontend on port 3000...
start "TechPulse - Frontend UI (Port 3000)" cmd /k "cd /d %~dp0frontend && npm.cmd run dev"

echo.
echo ==============================================
echo  All 3 services are running in separate windows!
echo  Open in your browser: http://localhost:3000
echo ==============================================
echo.
pause
