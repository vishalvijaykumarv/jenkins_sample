#!/bin/bash

counter=0
while [ $counter -lt 500 ]; do
 let counter=counter+1
 name=$( nl  peoples.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
 lastname=$( nl peoples.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
 age=$(shuf -i 20-40 -n 1)
 mysql -u root -p'1234' -e "insert into people.register values ($counter, '$name','$lastname', $age)"
 echo "$counter $name $lastname $age was imported into database"
done
