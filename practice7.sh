#!/bin/bash


IP_FILE="/root/Reyhane//ip_list.txt"

DATE=$(date +%Y-%m-%d)


HOSTNAME=$(hostname)


LOG_FILE="/root/Reyhane/ping_log_$DATE.txt"


touch "$LOG_FILE"


while IFS= read -r ip; do
    echo "Pinging $ip..." | tee -a "$LOG_FILE"
    
   
    if ping -c 1 "$ip" &> /dev/null; then
        echo "$HOSTNAME: $ip is reachable." | tee -a "$LOG_FILE"
    else
        echo "$HOSTNAME: $ip is NOT reachable." | tee -a "$LOG_FILE"
    fi
done < "$IP_FILE"

echo "Ping results have been saved to $LOG_FILE."

