curl -O https://pkgs.tailscale.com/stable/tailscale_1.52.1_amd64.tgz;
tar zxvf tailscale_1.52.1_amd64.tgz
cp tailscale_1.52.1_amd64/tailscaled /usr/sbin/tailscaled;
cp tailscale_1.52.1_amd64/tailscale /usr/bin/tailscale;

curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libmnl-1.0.4-15.el9.x86_64.rpm;
curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libnfnetlink-1.0.1-21.el9.x86_64.rpm;
curl -O https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages/libnetfilter_conntrack-1.0.9-1.el9.x86_64.rpm;
curl -O https://repo.almalinux.org/almalinux/9/AppStream/x86_64/os/Packages/iptables-devel-1.8.8-6.el9_1.x86_64.rpm;
rpm -Uvh libmnl-1.0.4-15.el9.x86_64.rpm; 
rpm -Uvh libnfnetlink-1.0.1-21.el9.x86_64.rpm; 
rpm -Uvh libnetfilter_conntrack-1.0.9-1.el9.x86_64.rpm; 
rpm -Uvh iptables-devel-1.8.8-6.el9_1.x86_64.rpm; 
nohup /usr/sbin/tailscaled &
