#!/usr/bin/bash
sudo cp /home/ec2-user/DjangoCICDPipeline/gunicorn/cicd/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /home/ec2-user/DjangoCICDPipeline/gunicorn/cicd/gunicorn.service  /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service

# DjangoCICDPipeline