cd /usr/share/nginx/html/   #goto html files path

#/etc/nginx/nginx.conf or /etc/nginx/sites-available/   (use an use any of these paths also)

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



#ssl certificate

sudo yum install -y epel-release
sudo yum install -y certbot
sudo yum install -y python3-certbot-nginx
sudo nano /etc/nginx/nginx.conf    # in this file hange server_name yourdomain.com
sudo certbot --nginx -d yourdomain.com 








