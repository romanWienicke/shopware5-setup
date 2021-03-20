#!/bin/sh

apt update -y
# apt upgrade -y
apt install apache2 -y


apt-get install mariadb-server mariadb-client -y
mysql < shopware.sql

apt-get install software-properties-common -y
apt install php libapache2-mod-php php-common php-sqlite3 php-curl php-intl php-mbstring php-xmlrpc php-mysql php-gd php-xml php-cli php-zip unzip  redis-server -y
wget https://www.shopware.com/en/Download/redirect/version/sw5/file/install_5.6.9_be8e9cd9a8f4b7ab6f81c7922e71cbe3c16d78eb.zip -O /tmp/shopware.zip
unzip /tmp/shopware.zip -d /tmp/shopware
cp -r /tmp/shopware/* /var/www/html/
cp /tmp/shopware/.htaccess /var/www/html/
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/
rm /var/www/html/index.html
a2enmod rewrite
cp php.ini /etc/php/7.4/apache2/
cp 000-default.conf /etc/apache2/sites-available/
cp redis.conf /etc/redis/
cp config.php /var/www/html/
systemctl restart redis.service
systemctl restart apache2.service
mysql_secure_installation

