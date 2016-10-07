#!/bin/bash

# define some things
LIST=('apt' 'bunny' 'duck' 'cower' 'gnu' 'koala' 'kitty' 'stegosaurus' 'stimpy' 'snowman' 'turtle' 'tux' 'meow' 'milk' 'moose' 'pony' 'pony-smaller' 'ren' 'sheep' 'skeleton' 'elephant' 'daemon' 'cock' 'ghostbusters')
RANDOM=$$$(date +%x)
PICK=('cowsay' 'cowthink')

# run the loop
while true;
do
   echo "\n\n"
   COW=${LIST[$RANDOM % ${#LIST[@]} ]}
   ACTION=${PICK[$RANDOM % ${#PICK[@]} ]}
   clear
   fortune | $ACTION -f $COW 
   sleep 120
done
