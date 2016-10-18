apt-get install -y haproxy
vim /etc/default/haproxy
#	ENABLED=1
service haproxy
mv /etc/haproxy/haproxy.cfg{,.original}
vim /etc/default/haproxy
# Add the following section
	listen appname 0.0.0.0:80
    mode http
    stats enable
    stats uri /haproxy?stats
    stats realm Strictly\ Private
    stats auth A_Username:YourPassword
    stats auth Another_User:passwd
    balance roundrobin
    option httpclose
    option forwardfor
    server web1 <WEB1>:80 check
