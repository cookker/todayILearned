#!/bin/bash

CONFIG=$(ls *conf)
DATE=$(date +%F)

for CONF in $CONFIG 
do
  echo "rename ${CONF} to ${DATE}-${CONF}"
  mv ${CONF} ${DATE}-${CONF}
done

