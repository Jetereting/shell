#!/bin/bash
# better-cloudflare-ip cloudflare ipv4 优选
curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh > cf.sh
sed -i '' 's/read -p "请选择菜单(默认0): " menu/menu=1/' cf.sh
sed -i '' 's/read -p "请设置期望的带宽大小(默认最小1,单位 Mbps):" bandwidth/bandwidth=1/' cf.sh
sed -i '' 's/read -p "请设置RTT测试进程数(默认10,最大50):" tasknum/tasknum=10/' cf.sh
bash cf.sh
rm cf.sh
