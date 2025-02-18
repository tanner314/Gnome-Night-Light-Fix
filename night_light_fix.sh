#!bin/bash

echo "All credit goes to MarcusEngine on clearlinux.org for the fix!"

# Removing faulty database files within /var/lib/colord/
sudo rm -f /var/lib/colord/*.db

# Setting ownership and permissions for /var/lib/colord
sudo chown -R colord:colord /var/lib/colord
sudo chmod 755 /var/lib/colord
sudo -u colord /usr/libexec/colord --verbose

echo "Reboot when you're ready to see color profiles and night light."
echo "Thanks MarcusEngine!"
