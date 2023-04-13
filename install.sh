#!/bin/bash
 
sudo docker-compose up -d

name=$(sudo docker-compose ps | grep grafana | awk '{ print $1 }')
pass=$(cat .env | grep PASS | cut -d "=" -f 2)

# Workaround with password variable since the container doesn't have that variable defined'
echo "sudo docker exec -d $name grafana-cli admin reset-admin-password $pass" | bash

# Import data?
echo -n "Do you want to import all .csv files in \"influxImport\"? [Y/n] "
read import

[ -z $import ] || [ $import == "y" ] || [ $import == "Y" ] || exit 0

cd influxImport
./import.sh
cd -
