#!/usr/bin/bash

domain=$1

if [ -z $domain ]
then
echo " Argument not present"
echo " usage $0 [common name]"
exit 99
fi

if [ -d ~/SSL ] 
then
echo "~/SSL exists, CSR will be created in ~/SSL"
else
mkdir ~/SSL
fi

echo "Creating a key"
openssl genrsa -out ~/SSL/"$domain".key 2048

echo "------------------------"
echo "Creating CSR"
echo "enter password"
passwd= read $2

echo "------------------------"
echo "Enter country: Press [ENTER] if country is US"
country= read $3
echo $country
if [ -z $country ]
then
country=US
fi

echo "Enter state: Press [ENTER] if state is CA"
state= read $4
if [ -z $state ]
then
state=CA
fi

echo "Enter organization: Press [ENTER] if organization is DEVOPS"
org= read $5
if [ -z $organization ]
then
organization=DEVOPS
fi

echo $domain
openssl req -new -sha256 -key ~/SSL/"$domain".key -out ~/SSL/"$domain".csr -passin pass:$passwd -subj "/C=$country/ST=$state/O=$organization"

echo "-----------------------------"
echo "Below is your CSR"
cat ~/SSL/"$domain".csr
