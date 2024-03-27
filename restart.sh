# 重启动执行目录下的某个应用 例如：cd xxx;restart.sh test -conf xx.conf
echo "restart $@"
stop.sh $1;
start.sh $@;
