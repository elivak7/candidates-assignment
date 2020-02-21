#!/bin/bash
#add fix to exercise3 here
sed -i".bak" '13s/deny/Allow/' /etc/apache2/sites-available/default
service apache2 restart