# Installation for travis-ci

# Move files that installation should create
# Import database with admin user and 4 ads

sudo cp /var/www/yclas/build/install/auth.php /var/www/yclas/oc/config/
sudo cp /var/www/yclas/build/install/database.php /var/www/yclas/oc/config/
sudo cp /var/www/yclas/build/install/robots /var/www/yclas/robots.txt
sudo cp /var/www/yclas/build/install/sitemap /var/www/yclas/sitemap.xml
sudo cp /var/www/yclas/build/install/htaccess-install /var/www/yclas/.htaccess
sudo rm -rf /var/www/yclas/install/
sudo rm -rf /var/www/yclas/install-yclas.php
mysql -uroot openclassifieds < /var/www/yclas/build/install/openclassifieds.sql
