
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ec2-user/DjangoCICDPipeline/cicd/nginx/nginx.conf /etc/nginx/sites-available/cicd
sudo ln -s /etc/nginx/sites-available/cicd /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/cicd /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx
