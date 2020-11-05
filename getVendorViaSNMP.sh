#!/bin/bash

################################################################################
#  This script will launch a SNMP query asking for the sysObjectID of the host
#  Once we have it, we take onlye the vendor number of the OID
#  Vendor examples:
#  9 = Cisco
#  40310 = Cumulus Network
#  ...
################################################################################
#  Usage: ./getVendorViaSNMP.sh community host
################################################################################

community=$1
host=$2
snmpwalk -v2c -c $community $host .1.3.6.1.2.1.1.2.0 | cut -d "." -f 15
