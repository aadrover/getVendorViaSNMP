# getVendorViaSNMP
Bash script to get the vendor number of an equipment using SNMP queries

The script launch a snmpwalk asking for the standard sysObjectID (.1.3.6.1.2.1.1.2.0). 
Once we get the response, we cut 'the output' and retain only the vendor number

Example: 


#  Usage: ./getVendorViaSNMP.sh community host


