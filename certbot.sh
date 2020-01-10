#!/bin/bash
# Just commands taken from the certbot site that 
# has minor edits 
# It works for me on Amazon Linux AMI 2018.03
wget https://dl.eff.org/certbot-auto
sudo mv certbot-auto /usr/local/bin/certbot-auto
sudo chown root /usr/local/bin/certbot-auto
sudo chmod 0755 /usr/local/bin/certbot-auto
sudo /usr/local/bin/certbot-auto --nginx --debug
echo "0 0,12 * * * root python -c 'import random; import time; time.sleep(random.random() * 3600)' && /usr/local/bin/certbot-auto renew --debug" | sudo tee -a /etc/crontab > /dev/null