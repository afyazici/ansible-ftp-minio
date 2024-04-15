#!/bin/sh
# Loop through hosts
for i in 1 2 3
do
    # Transfer command output to a variable
    output=$(virsh domifaddr "host$i" --source agent)

    # Filter the eth0 line with grep and get the IP address with awk
    eth0_address=$(echo "$output" | grep "eth0" | awk '{print $4}')

    # Remove the /24 expression
    eth0_address=$(echo "$eth0_address" | sed 's/\/24//')

    # Print the result
    echo "$eth0_address"
    echo "[host$i]" >> hosts.ini
    echo "root@$eth0_address" >> hosts.ini
    echo "" >> hosts.ini
    echo "ip_host$i: $eth0_address" >> defaults/host_conf.yml
done
