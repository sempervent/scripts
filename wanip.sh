#!/bin/bash
if hash dig 2>/dev/null; then
   dig +short myip.opendns.com @resolver1.opendns.com
else
   echo -e 'Please type "sudo apt install -y dnsutils to enable dig"'
fi
