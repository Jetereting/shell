curl -O https://pkgs.tailscale.com/stable/tailscale_1.52.1_amd64.tgz;
tar zxvf tailscale_1.52.1_amd64.tgz
cp tailscale_1.52.1_amd64/tailscaled /usr/sbin/tailscaled;
cp tailscale_1.52.1_amd64/tailscale /usr/bin/tailscale;

curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libmnl-1.0.4-15.el9.x86_64.rpm;
curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libnfnetlink-1.0.1-21.el9.x86_64.rpm;
curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libnetfilter_conntrack-1.0.9-1.el9.x86_64.rpm;
curl -O http://mirrors.163.com/centos/7/os/x86_64/Packages/iptables-1.4.21-35.el7.x86_64.rpm;
rpm -Uvh libmnl-1.0.4-15.el9.x86_64.rpm; 
rpm -Uvh libnfnetlink-1.0.1-21.el9.x86_64.rpm; 
rpm -Uvh libnetfilter_conntrack-1.0.9-1.el9.x86_64.rpm; 
rpm -Uvh iptables-1.4.21-35.el7.x86_64.rpm; 
nohup /usr/sbin/tailscaled &
