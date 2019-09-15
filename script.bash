
VPS_STATE=$(curl -s 'https://api.cloudfordream.com/api/vps.php?api_key=&action=state&vps=' | python -c "import sys, json; print json.load(sys.stdin)['state']")


if [ $VPS_STATE = "poweredOff" ]
then
        VPS_POWEREDOFF=$(echo "VPS's Powered Off. Restarting...")
        VPS_RESTART=$(curl -s 'https://api.cloudfordream.com/api/vps.php?api_key=&action=boot&vps=')
	echo "$VPS_POWEREDOFF $VPS_RESTART" | mail -s  "Votre VPS a été redémarré automatiquement" 
fi

if [ $VPS_STATE = "poweredOn" ]
then
	exit
fi
exit
