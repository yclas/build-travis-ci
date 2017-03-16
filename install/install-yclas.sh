# Automated installation

# Move files that installation should create
# remove install/install.lock
# Import database with admin user and 4 ads

sudo cp /var/www/openclassifieds2/build/install/auth.php /var/www/openclassifieds2/oc/config/
sudo cp /var/www/openclassifieds2/build/install/database.php /var/www/openclassifieds2/oc/config/
sudo cp /var/www/openclassifieds2/build/install/robots /var/www/openclassifieds2/robots.txt
sudo cp /var/www/openclassifieds2/build/install/sitemap /var/www/openclassifieds2/sitemap.xml
sudo cp /var/www/openclassifieds2/build/install/htaccess-install /var/www/openclassifieds2/.htaccess
sudo rm -rf /var/www/openclassifieds2/install/
sudo rm -rf /var/www/openclassifieds2/install-yclas.php
mysql -uroot openclassifieds < /var/www/openclassifieds2/build/install/openclassifieds.sql
