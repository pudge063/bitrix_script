apt install nginx php8.1-fpm php8.1-mysql php8.1-mbstring php8.1-xml php8.1-curl php8.1-zip php-gd -y

mv config/php.ini /etc/php/8.1/fpm/php.ini

systemctl start php8.1-fpm

systemctl reload php8.1-fpm