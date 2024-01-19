# 重启动执行目录下的某个应用 例如：cd xxx;restart.sh test '-conf xx.conf'
app=$1;
stop.sh $app;
start.sh $app $2;
