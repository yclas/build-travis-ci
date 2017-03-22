sudo apt-add-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install -y php7.0 -y

sudo apt-get install php7.0-curl -y

sudo apt-get install php7.0-apc -y

sudo apt-get install php7.0-gd -y

sudo apt-get install php7.0-fpm -y
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.0-fpm
sudo service apache2 reload

sudo apt-get install php7.0-mbstring -y

sudo apt-get install php7.0-mcrypt -y

sudo apt-get install php7.0-mysql -y

sudo apt-get install php7.0-xml -y

sudo apt-get install php7.0-zip -y

sudo apt-get install php-soap -y

sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.0/cli/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.0/fpm/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.0/apache2/php.ini
sudo service apache2 restart