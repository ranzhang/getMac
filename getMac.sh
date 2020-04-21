#! /bin/bash

mac=$1
apikey='yourAPIkey'
url='https://api.macaddress.io/'
ver='v1'
out='json'

testMAC="44:38:39:ff:ef:57"

function main(){
  if [[ $mac == '' ]] ; then
    echo "MAC address is expected"
  fi

  call="$url$ver?apiKey=$apikey&output=$out&search=$mac"
  macJson=$(curl -s "$call")

  echo "The company of the MAC address: "
  echo $macJson | grep -Po '"companyName":.*?[^\\]",'

}

main
exit 0
