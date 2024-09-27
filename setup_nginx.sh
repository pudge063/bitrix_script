# nginx 

apt install nginx -y

mv config/bitrix.freeinet.space /etc/nginx/sites-available
mv config/admin /etc/nginx/sites-available

ln -s /etc/nginx/sites-available/bitrix.freeinet.space /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/admin /etc/nginx/sites-enabled/


systemctl reload nginx

systemctl restart nginx

# systemctl status nginx