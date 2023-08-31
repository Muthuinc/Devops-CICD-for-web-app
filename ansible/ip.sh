#!/bin/bash

a=$(aws ec2 describe-instances --region ap-southeast-2 --filters "Name=tag:Name,Values=ubuntu" --query 'Reservations[].Instances[].PublicIpAddress' --output text)

# in the inventory.txt we add the ip of the server

sed -i "s/publicip/$a/g" inventory.txt


