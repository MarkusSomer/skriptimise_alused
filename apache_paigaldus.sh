#!/bin/bash
clear
echo "Teeme vajalikud uuendused."
apt-get update
echo "Kontrollime kas veebiserver on installitud."
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
if [ $APACHE2 -eq 0 ]; then
	echo "Installime Apache2."
	apt-get install apache2
	clear
	echo "Apache on paigaldatud"
	echo "Muudame veebilehe pealkirja."
	sed -i "s/Apache2 Debian Default Page: It works/Markuse script töötab/g" /var/www/html/index.html
elif [ $APACHE2 -eq 1 ]; then
	echo "Veebiserver on juba installitud"
#	echo "Muudame veebilehe pealkirja."
#	sed -i "s/Apache2 Debian Default Page: It works/Markuse script töötab/g" /var/www/html/index.html
fi

