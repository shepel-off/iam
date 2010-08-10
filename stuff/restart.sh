#!/bin/bash
MANAGE="/var/www/vhosts/iam/manage.py";
python $MANAGE syncdb && /etc/init.d/httpd2 restart
