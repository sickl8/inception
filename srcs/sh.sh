if [ "$(cat /etc/hosts | grep '127.0.0.1 isaadi.42.fr')" ]
then
	echo false &>/dev/null
else
	echo true &>/dev/null
	echo '127.0.0.1 isaadi.42.fr' >> /etc/hosts
fi
