# modify machine time
dpkg-reconfigure tzdata

#open port
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp --dport 443 -j ACCEPT
iptables -I INPUT -p tcp --dport 8443 -j ACCEPT

iptables-save

apt update -y
apt install -y curl
apt install -y socat


#ssl cert

curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --register-account -m seuzhusiyu@gmail.com

~/.acme.sh/acme.sh --issue -d test.yccgfw1.com --key-file /root/private.key --fullchain-file /root/cert.crt


# x-ui 
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
