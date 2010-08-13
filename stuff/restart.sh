#!/bin/bash
MANAGE="/var/www/vhosts/iam/manage.py";
sudo python $MANAGE syncdb && sudo /etc/init.d/httpd2 restart
