sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start
sudo service httpd status
sudo echo "<h1>Welcome to my website</h1>" > /var/www/html/index.html
