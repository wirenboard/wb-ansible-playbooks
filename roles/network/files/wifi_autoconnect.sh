#!/bin/bash

# Substitute the name of the interface
WLANINTERFACE=wlan1
# Substitute the address of the router or server on the Internet, access to which will be checked
SERVER=192.168.0.1

# Only send two pings, sending output to /dev/null
ping -I ${WLANINTERFACE} -c2 ${SERVER} > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
# Restart the wireless interface
ifdown --force ${WLANINTERFACE}
ifup ${WLANINTERFACE}
fi
