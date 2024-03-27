# 通用启动脚本
# 启动执行目录下的某个应用 例如：cd xxx;start.sh test '-c conf/conf.yaml'
app=$1
echo "start $app $2"
# 脚本目录
#script_dir=$(cd "$(dirname $0)";pwd)/
# 执行目录
script_dir=$(pwd)/
chmod +x ${script_dir}${app}
nohup ${script_dir}${app} $2 > ${script_dir}${app}.out 2>&1 &
