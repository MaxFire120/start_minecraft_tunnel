# start_minecraft_tunnel

1. Download the .bat File
Download the file: start_minecraft_tunnel.bat
(Optional) Put it in its own folder like MinecraftTunnel

2. Double-Click the File
Right-click → Run as administrator (optional but safer if permissions are strict)
A black window (PowerShell or CMD) will open

3. First Time? It Will Download Cloudflared
If cloudflared.exe is not in the folder yet, it will auto-download
Internet connection required
After that, the tunnel will start

4. You’ll See This Message: [INFO] Tunnel started. Now launch Minecraft and connect to localhost:25565

5. Open Minecraft Java Edition
Go to Multiplayer
Click Direct Connect
Type: localhost:25565
Join the game!

For Future Sessions
You just need to double-click the .bat again. It won’t re-download cloudflared unless you delete it.
