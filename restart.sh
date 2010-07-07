#!/bin/bash
python /srv/www/vhosts/iam/manage.py syncdb && sudo /etc/init.d/apache2 restart
