@echo off
rem Starts Smithbox with the remote control on port 7780 (change below). Extra arguments go to Smithbox, e.g. --remote-roots C:\shots
set DOTNET_STARTUP_HOOKS=%~dp0Smithbox.Remote.dll
start "" "%~dp0Smithbox.Vulkan.exe" --remote-port 7780 %*
