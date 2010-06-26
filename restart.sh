#!/bin/bash
python /var/www/localhost/htdocs/iam/manage.py syncdb && sudo /etc/init.d/apache2 restart
