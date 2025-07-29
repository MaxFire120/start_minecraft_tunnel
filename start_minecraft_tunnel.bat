@echo off
setlocal

:: Check if cloudflared exists in the same folder
set CLOUDFLARED_EXE=%~dp0cloudflared.exe

if not exist "%CLOUDFLARED_EXE%" (
    echo [INFO] Checking if cloudflared is installed system-wide...
    where cloudflared >nul 2>&1
    if errorlevel 1 (
        echo [INFO] Installing cloudflared using winget...
        winget install --id Cloudflare.cloudflared -e --accept-package-agreements --accept-source-agreements
    ) else (
        echo [INFO] Found cloudflared installed system-wide.
    )
)

:: Start the tunnel using installed cloudflared
echo [INFO] Starting Cloudflare tunnel to minecraft.80hdtogo.com...
start "" cloudflared access tcp --hostname minecraft.80hdtogo.com --url localhost:25565

echo [INFO] Tunnel started. Now launch Minecraft and connect to localhost:25565
pause
