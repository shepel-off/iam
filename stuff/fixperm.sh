#!/bin/bash
if [ $(hostname) = "Vortigaunt" ]; then
    IAM="/var/www/localhost/htdocs/iam";
else
    IAM="/srv/www/vhosts/iam";
fi
sudo chmod 775 -R $IAM
sudo chmod 775 -R $IAM/locale
sudo chgrp apache -R $IAM
