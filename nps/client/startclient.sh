# test server
# nohup ./npc -server=120.79.123.194:9913 -vkey=ur1g7pkns8hljshs >/dev/null 2>&1 &
echo "执行的命令为:$0 $*"
case $1 in
"90")
    echo '90执行成功'
    nohup ./npc -server=47.52.39.39:2142 -vkey=gexkejoizvt0saxc >./npc.log 2>&1 &
    ;;
"justhost")
    echo 'justhost'
    nohup ./npc -server=47.52.39.39:2142 -vkey=e12yfrv404v5zybq >./npc.log 2>&1 &
    ;;
*)
    echo "Usage: ./startclient.sh cywin10"
    exit 1
    ;;
esac
# test
# ./npc -server=120.79.123.194:9913 -vkey=ur1g7pkns8hljshs
