sudo apt update
sudo apt install nginx php8.1-fpm php8.1-mysql php8.1-mbstring php8.1-xml php8.1-curl php8.1-zip php-gd

apt-get update && apt-get upgrade -y

# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# nginx 

apt install nginx -y

mv config/bitrix.freeinet.space /etc/nginx/sites-available

ln -s /etc/nginx/sites-available/bitrix.freeinet.space /etc/nginx/sites-enabled/

systemctl reload nginx

systemctl restart nginx

sudo systemctl start php8.1-fpm


mv config/php.ini /etc/php/8.1/fpm/php.ini
