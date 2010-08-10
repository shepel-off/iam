#!/bin/bash
IAM="/var/www/vhosts/iam";
chmod 775 -R $IAM
chgrp apache2 -R $IAM
chown apache2 -R $IAM
