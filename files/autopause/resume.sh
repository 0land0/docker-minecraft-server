#!/bin/bash

. /start-utils

if [[ $( ps -a -o stat,comm | grep 'java' | awk '{ print $1 }') =~ ^T.*$ ]] ; then
  logAutopauseAction "Knocked, resuming Java process"
  killall -q -CONT java
fi
