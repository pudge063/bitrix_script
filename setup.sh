sudo apt update

source scripts/setup_php.sh
source scripts/setup_docker.sh
source scripts/setup_nginx.sh

docker compose up -d

mkdir /var/www/bitrix
mv config/bitrixsetup.php /var/www/bitrix/bitrixsetup.php


chmod +x /var/www/bitrix/bitrixsetup.php
sudo chown -R www-data:www-data /var/www/bitrix
sudo chmod -R 755 /var/www/bitrix

docker compose up -d