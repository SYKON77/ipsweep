# This is a ipsweep from seq 1 to 254

#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot your ip address!"
echo "systax: ./ipsweep.sh 192.168.1"
else
for ip in `seq 1 254`; do
ping -c 1 $1:$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
