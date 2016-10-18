sudo mkfs.ext4 -F /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01

sudo mkdir -p /vol
sudo mount -o discard,defaults /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01 /vol

echo /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01 /vol ext4 defaults,nofail,discard 0 0 | sudo tee -a /etc/fstab

sudo /etc/init.d/mysql stop

sudo mkdir /vol/etc /vol/lib /vol/log
sudo mv /etc/mysql     /vol/etc/
sudo mv /var/lib/mysql /vol/lib/
sudo mv /var/log/mysql /vol/log/

sudo mkdir /etc/mysql
sudo mkdir /var/lib/mysql
sudo mkdir /var/log/mysql

echo "/vol/etc/mysql /etc/mysql     none bind" | sudo tee -a /etc/fstab
sudo mount /etc/mysql

echo "/vol/lib/mysql /var/lib/mysql none bind" | sudo tee -a /etc/fstab
sudo mount /var/lib/mysql

echo "/vol/log/mysql /var/log/mysql none bind" | sudo tee -a /etc/fstab
sudo mount /var/log/mysql

sudo /etc/init.d/mysql start