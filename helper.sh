# Clone the Repo
apt-get install -y git
git clone https://github.com/janakiramm/cloudshop.git 

#Login to Jumpbox
ssh root@jb.cloudreadylabs.com

# Check interfaces
ifconfig 

# Add SSH Key
eval `ssh-agent -s`
ssh-add key.pem

# Get Private IP Address
curl http://169.254.169.254/metadata/v1/interfaces/private/0/ipv4/address
ifconfig eth1 | grep "inet " | awk -F'[: ]+' '{ print $4 }'

# Update DNS
perl dnsmeapi.pl \
 '$DNS_URL' \
 -X PUT \
 -H accept:application/json \
 -H content-type:application/json \
 -d '{"name":"'$1'","type":"A","value":"'$INT_IP'","id":"'$2'","gtdLocation":"DEFAULT","ttl":30}'

# Check HAProxy Config
ssh shop.cloudreadylabs.com cat /etc/haproxy/haproxy.cfg

# Stop Web1
ssh root@web1.int.cloudreadylabs.com service apache2 stop

# Replace Logo
ssh root@web1.int.cloudreadylabs.com cp /opt/cloudshop/images/logo_1.png /var/www/html/image/data/logo_new.png
ssh root@web2.int.cloudreadylabs.com cp /opt/cloudshop/images/logo_2.png /var/www/html/image/data/logo_new.png


