if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ "$1" == "kill" ]
then
	echo "blacklist uvcvideo" > /etc/modprobe.d/blacklist.conf
	systemctl reboot
elif [ "$1" == "start" ]
then
	echo "" > /etc/modprobe.d/blacklist.conf
	systemctl reboot
else
	echo "Invalid argument"
fi
