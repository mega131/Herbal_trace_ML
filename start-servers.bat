@echo off
echo Starting Herbal Traceability System...
echo.

echo Starting MongoDB (if not already running)...
start "MongoDB" mongod

echo.
echo Waiting 3 seconds for MongoDB to start...
timeout /t 3 /nobreak > nul

echo Starting Backend Server...
start "Backend" cmd /k "cd Backend_sih-main && npm install && npm run dev"

echo.
echo Waiting 5 seconds for backend to start...
timeout /t 5 /nobreak > nul

echo Starting Frontend Server...
start "Frontend" cmd /k "cd front && npm install && npm run dev"

echo.
echo All servers are starting...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:5173
echo.
echo Press any key to exit this window...
pause > nul