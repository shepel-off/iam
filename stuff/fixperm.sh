#!/bin/bash
IAM="/var/www/vhosts/iam";
sudo chmod 775 -R $IAM
sudo chgrp apache2 -R $IAM
