#!/bin/bash

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <server_ip> <username> <password>"
    exit 1
fi

SERVER_IP=$1
USERNAME=$2
PASSWORD=$3
LOCAL_PATH="/home/user/passwd_$SERVER_IP"


if ping -c 1 "$SERVER_IP" &> /dev/null; then
    echo "Server is reachable. Copying /etc/passwd..."
 
    if command -v sshpass &> /dev/null; then
        sshpass -p "$PASSWORD" scp "$USERNAME@$SERVER_IP:/etc/passwd" "$LOCAL_PATH"

        if [[ $? -eq 0 ]]; then
            echo "File /etc/passwd copied to $LOCAL_PATH successfully."
        else
            echo "Failed to copy the file."
        fi
    else
        echo "sshpass is not installed. Please install it to proceed."
        exit 1
    fi
else
    echo "Server $SERVER_IP is not accessible."
    exit 1
fi


