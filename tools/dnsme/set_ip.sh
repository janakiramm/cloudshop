export INT_IP=`ifconfig eth1 | grep "inet " | awk -F'[: ]+' '{ print $4 }'`
perl /opt/tools/dnsme/dnsmeapi.pl https://api.dnsmadeeasy.com/V2.0/dns/managed/4451671/records/39799308 -X PUT -H accept:application/json -H content-type:application/json -d '{"name":"'$1'","type":"A","value":"'$INT_IP'","id":"'$2'","gtdLocation":"DEFAULT","ttl":30}'
