if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
taskkill /F /IM npc.exe
npc.exe -server=47.90.84.157:9642 -vkey=y23gpqfb25s398iy -type=tcp >> .\npc.log 2>&1
