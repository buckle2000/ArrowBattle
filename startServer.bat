@echo off
cd source
md tmp 2>nul
haxe -main network.Server -neko tmp/Server.n
cd tmp
neko Server.n
pause
