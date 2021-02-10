#!/bin/bash

clear
echo "Eemdaldame apache2."
	apt-get --purge remove apache2
	apt-get autoremove apache2
	apt-get autoclean apache2
	rm /var/www/html/index.html
clear
echo "Apache2 eemaldatud"
