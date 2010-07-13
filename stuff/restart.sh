#!/bin/bash
if [ $(hostname) = "Vortigaunt" ]; then
    MANAGE="/var/www/localhost/htdocs/iam/manage.py";
else
    MANAGE="/srv/www/vhosts/iam/manage.py";
fi
python $MANAGE syncdb && sudo /etc/init.d/apache2 restart
