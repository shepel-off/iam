#!/bin/bash
if [ $(hostname) = "Vortigaunt" ]; then
    IAM="/var/www/localhost/htdocs/iam";
else
    IAM="/srv/www/vhosts/iam";
fi
OLD=$PWD
cd $IAM
django-admin.py makemessages --locale en-us
cd $OLD
