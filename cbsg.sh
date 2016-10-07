#!/bin/bash

while true;
do
   clear
   curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo '^<li>.*</li>' | sed s,\</\\?li\>,,g | shuf -n 1 | cowsay -f kosh
   sleep 90
done
