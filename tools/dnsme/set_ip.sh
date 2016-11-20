export INT_IP=`ifconfig eth1 | grep "inet " | awk -F'[: ]+' '{ print $4 }'`
perl /opt/cloudshop/tools/dnsme/dnsmeapi.pl "https://api.dnsmadeeasy.com/V2.0/dns/managed/$2/records/$3" -X PUT -H accept:application/json -H content-type:application/json -d '{"name":"'$1'","type":"A","value":"'$INT_IP'","id":"'$3'","gtdLocation":"DEFAULT","ttl":30}'

# perl ./dnsmeapi.pl https://api.dnsmadeeasy.com/V2.0/dns/managed/
# perl ./dnsmeapi.pl https://api.dnsmadeeasy.com/V2.0/dns/managed/<DOM_ID>/records
#echo "@reboot root sh /opt/cloudshop/tools/dnsme/set_ip.sh web1.int 4726991 41894386" >> /etc/crontab
