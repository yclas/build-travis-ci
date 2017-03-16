sudo apt-get install -y language-pack-en-base
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.1
sudo apt-get install php7.1-curl -y

sudo apt-get install php7.1-apc -y

sudo apt-get install php7.1-gd -y

sudo apt-get install php7.1-fpm -y
sudo a2enmod proxy_fcgi setenvif
sudo service apache2 restart
sudo a2enconf php7.1-fpm
sudo service apache2 reload

sudo apt-get install php7.1-mbstring -y

sudo apt-get install php7.1-mcrypt -y

sudo apt-get install php7.1-mysql -y

sudo apt-get install php7.1-xml -y

sudo apt-get install php7.1-zip -y

sudo apt-get install php7.1-soap -y

sudo service apache2 restart

sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.1/cli/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.1/fpm/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.1/apache2/php.ini
sudo service apache2 restart

php -v

