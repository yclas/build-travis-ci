# Automated installation

# Move files that installation should create
# remove install/install.lock
# Import database with admin user and 4 ads

sudo cp /var/www/yclas-test/build/install/auth.php /var/www/yclas-test/oc/config/
sudo cp /var/www/yclas-test/build/install/database.php /var/www/yclas-test/oc/config/
sudo cp /var/www/yclas-test/build/install/robots /var/www/yclas-test/robots.txt
sudo cp /var/www/yclas-test/build/install/sitemap /var/www/yclas-test/sitemap.xml
sudo cp /var/www/yclas-test/build/install/htaccess-install /var/www/yclas-test/.htaccess
sudo rm -rf /var/www/yclas-test/install/
sudo rm -rf /var/www/yclas-test/install-yclas.php
mysql -uroot openclassifieds < /var/www/yclas-test/build/install/openclassifieds.sql
