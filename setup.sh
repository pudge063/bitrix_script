apt update

source scripts/setup_php.sh
source scripts/setup_docker.sh
source scripts/setup_nginx.sh

mkdir /var/www/bitrix
mv config/bitrixsetup.php /var/www/bitrix/bitrixsetup.php


chmod +x /var/www/bitrix/bitrixsetup.php
chown -R www-data:www-data /var/www/bitrix
chmod -R 755 /var/www/bitrix

docker compose up -d
