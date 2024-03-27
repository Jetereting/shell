# 通用启动脚本
# 启动执行目录下的某个应用 例如：cd xxx;start.sh test '-c conf/conf.yaml'
echo "start $@"
# 脚本目录
#script_dir=$(cd "$(dirname $0)";pwd)/
# 执行目录
script_dir=$(pwd)/
chmod +x ${script_dir}$1
nohup ${script_dir}$@ > ${script_dir}${app}.out 2>&1 &
