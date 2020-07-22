#!/bin/bash

# Enable Password authentication
echo "Enable Password authentication"
sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config || echo "Failed to replace the sshd_config file"

echo "Restart the sshd service"
service sshd restart

