#!/bin/bash

DIN=DESCRIPTION.template
DOUT=sitools/DESCRIPTION

NewDATE=`date --iso`

echo "current status"
grep Version $DOUT

read -p "enter new version number: " NewVERSION

echo "set date to $NewDATE"

eval "sed -e 's/MyVERSION/$NewVERSION/' $DIN | \
sed -e 's/MyDATE/$NewDATE/' > $DOUT"
