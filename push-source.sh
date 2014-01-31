#!/bin/bash

MSG=`zenity --entry --text="source commit msg:"`

echo " --> adding ."
git add .

echo " --> commit with msg: $MSG"
git commit -am "$MSG"

echo " --> pushing to source branch"
git push origin source
