sudo apt update

source setup_php.sh
source setup_docker.sh
source setup_nginx.sh

docker compose up -d

mkdir /var/www/bitrix
mv config/bitrixsetup.php /var/www/bitrix/bitrixsetup.php


chmod +x /var/www/bitrix/bitrixsetup.php
sudo chown -R www-data:www-data /var/www/bitrix
sudo chmod -R 755 /var/www/bitrix

