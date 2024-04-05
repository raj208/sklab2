#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <login_name>"
    exit 1
fi

login_name=$1

while true; do
    who | grep -q "^$login_name" && break
    sleep 5
done

echo "Hello, $login_name! Welcome back!" > /dev/$(who | grep "^$login_name" | awk '{print $2}')
