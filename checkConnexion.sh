#/bin/sh
NOW=$(date)
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  # echo $NOW" - IPv4 is up" >> /var/log/error_check_connexion.log
  echo "up"
else
  echo "down"
  # echo $NOW" - IPv4 is down" >> /var/log/error_check_connexion.log
  sleep 2m
  if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "reup"
    # echo $NOW" - IPv4 is re-up" >> /var/log/error_check_connexion.log
  else
    echo "reboot"
    # echo $NOW" - REBOOT FREEBOX !!!!" >> /var/log/error_check_connexion.log
    /home/freebox/freebox_ping_reboot/reboot-fbx/reboot-fbx.sh
  fi
fi

