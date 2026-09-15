@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "AVITO ANALYTICS" http://127.0.0.1:8765/index.html
  py -m http.server 8765
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "AVITO ANALYTICS" http://127.0.0.1:8765/index.html
  python -m http.server 8765
  goto :eof
)
echo Python is not installed. Upload this folder to GitHub Pages or install Python.
pause
