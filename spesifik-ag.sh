sudo modprobe bridge
sudo modprobe veth

read -p "Interface giriniz (eth0, wlan0 vs.): " interface
read -p "DNS adresi giriniz: " dns
read -p "Bu ağ üzerinden geçirilecek komutu giriniz (örnek: curl ip.me): " komut
read -p "Gateway IP girin (örnek: 192.168.1.1): " gw
firejail --net=$interface --defaultgw=$gw --dns=$dns $komut
