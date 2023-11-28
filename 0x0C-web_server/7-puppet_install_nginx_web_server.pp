# Install and configure nginx server

exec { 'Nginx installation':
  provider => shell,
  command => 'sudo apt-get -y update; sudo apt-get -y install nginx; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html; sudo sed -i '/listen 80 default_server/a rewrite ^/redirect_me https://intranet.alxswe.com/ permanent;' /etc/nginx/sites-available/default; sudo service nginx start',
}
