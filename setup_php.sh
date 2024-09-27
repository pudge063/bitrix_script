sudo apt install nginx php8.1-fpm php8.1-mysql php8.1-mbstring php8.1-xml php8.1-curl php8.1-zip php-gd

mv config/php.ini /etc/php/8.1/fpm/php.ini

sudo systemctl start php8.1-fpm
sudo systemctl reload php8.1-fpm