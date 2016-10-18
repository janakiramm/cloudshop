sudo apt-get -y update

dbpass=password
export DEBIAN_FRONTEND=noninteractive

echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

sudo apt-get -y install mysql-server mysql-client  php5-mysql

mysql --user=root --password=password < db.sql

echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;" >> perm.sql
mysql -u root --password=password < perm.sql

sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
service mysql stop
service mysql start