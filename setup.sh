sudo apt update

source setup_php.sh
source setup_docker.sh
source setup_nginx.sh

docker compose up -d

mv config/bitrixsetup.php /var/www/bitrix/bitrixsetup.php

