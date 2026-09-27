#!/bin/bash

echo "===================================="
echo " Linux Service Status"
echo "===================================="

services=("sshd" "httpd" "firewalld" "crond")

for service in "${services[@]}"
do
if systemctl is-active --quiet "$service"; then
echo "$service : RUNNING"
else
echo "$service : STOPPED"
fi
done

echo "===================================="
