#!/bin/bash
echo "Verify if Yum is pre-installed"
yum --version

yum install epel-release

yum install nginx

echo "When installation is complete - verify"

systemctl start nginx

firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service-https

firewall-cmd reload
systemctl enable nginx

echo 'verifying if Nginx is up and running'

curl 'http://172.24.xx.xx'
