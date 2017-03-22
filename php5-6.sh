# Upgrade PHP from 5.5.9 to 5.6
sudo add-apt-repository ppa:ondrej/php -y > /dev/null
sudo apt-get -y update
sudo apt-get -y install php5.6 php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-zip

sudo apt-get install apache2 libapache2-mod-fastcgi
sudo apt-get install apache2 php5 libapache2-mod-php5

# Enable short_open_tag
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/5.6/cli/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/5.6/apache2/php.ini

# install mcrypt
sudo apt-get install php5.6-mcrypt
sudo php5enmod mcrypt

# Install php-fpm
sudo apt-get install php5.6-fpm -y > /dev/null
  
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/5.6/fpm/php.ini
sudo service apache2 reload

# Install gettext
sudo apt-get install gettext

# Soap Client
sudo apt-get install php5.6-soap -y

sudo apt-get install php5.6-xml -y
sudo service apache2 reload