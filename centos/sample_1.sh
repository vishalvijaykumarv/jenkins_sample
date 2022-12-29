#!/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
   echo "Hello, $NAME $LASTNAME. The current Date is $(date)"
else
   echo "if you want to see the name, then mark the show option"
fi
