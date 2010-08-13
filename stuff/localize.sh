#!/bin/bash
IAM="/var/www/vhosts/iam";
OLD=$PWD
cd $IAM
django-admin.py makemessages --locale en-us
cd $OLD
iam-fixperm
