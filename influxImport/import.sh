#!/bin/bash

name=$(sudo docker-compose ps | grep influx | awk '{ print $1 }')

for i in "$(ls *.csv)"
do
	sudo docker cp "$i" "$name:$i"
	echo "sudo docker exec -d $name influx write --bucket telegraf --format=csv --file \"$i\"" | bash

done
