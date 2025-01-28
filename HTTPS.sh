# FOR nginx html configuration

cd /usr/share/nginx/html/   #goto html files path for nginx

#/etc/nginx/nginx.conf or /etc/nginx/sites-available/   ( use any of these paths also)

: '
server {
    listen 80;
    server_name yourdomain.com;
    root /var/www/html;  # This is the root folder for HTML content
    index index.html index.htm;
}
  '

vi index.html #(edit your html code)
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl restart nginx


# FOR httpd  html configuration

cd /var/www/html/              #goto html files path for httpd
#/etc/httpd/httpd.conf or /etc/apache2/sites-available/000-default.conf  ( use any of these paths also)
vi index.html  #(write your html code)
sudo systemctl reload httpd
sudo systemctl restart httpd



#ssl certificate

sudo yum install -y epel-release
sudo yum install -y certbot
sudo yum install -y python3-certbot-nginx
sudo nano /etc/nginx/nginx.conf    # in this file change server_name yourdomain.com
sudo certbot --nginx -d yourdomain.com 








