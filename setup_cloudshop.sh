sudo apt-get -y update

dbpass=password
export DEBIAN_FRONTEND=noninteractive

echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

sudo apt-get -y install python-software-properties git apache2 mysql-server php5 php5-dev php5-mcrypt libapache2-mod-php5 php5-gd php5-mysql memcached php5-memcache curl libcurl3  libcurl3-dev php5-curl zip unzip

php5enmod mcrypt

cp -R web/* /var/www/html
sudo chmod -R 777 /var/www/*
rm /var/www/html/index.html

mysql --user=root --password=password < db/db.sql

sed -i.bak "s/localhost\//$1\//" /var/www/html/config.php
sed -i.bak "s/localhost\//$1\//" /var/www/html/admin/config.php

cd ..
rm -rf temp
service apache2 restart
