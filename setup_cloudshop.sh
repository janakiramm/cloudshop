sudo apt-get -y update

dbpass=$1
export DEBIAN_FRONTEND=noninteractive

echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

sudo apt-get -y install python-software-properties apache2 mysql-server php5 php5-dev php5-mcrypt libapache2-mod-php5 php5-gd php5-mysql memcached php5-memcache curl libcurl3  libcurl3-dev php5-curl zip unzip

php5enmod mcrypt

mkdir temp
cd temp

wget http://demos.janakiram.com.s3.amazonaws.com/shop/web.zip
wget http://demos.janakiram.com.s3.amazonaws.com/shop/db.sql

sudo unzip  web.zip -d /var/www/html
sudo chmod -R 777 /var/www/*

mysql --user=root --password=password < db.sql

sed -i.bak "s/localhost\//$2\//" /var/www/html/config.php
sed -i.bak "s/localhost\//$2\//" /var/www/html/admin/config.php

rm /var/www/html/index.html
cd ..
rm -rf temp
service apache2 restart