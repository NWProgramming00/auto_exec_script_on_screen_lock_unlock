#!/bin/bash

# gdbus monitor is running in constant loop monitoring bus events
gdbus monitor -y -d org.freedesktop.login1 |
	while read x; do
	case "$x" in
		# REPLACE PATH WITH YOUR PATH :)
		*"true"*) PATH/TO/YOUR/LOCK/SCREEN/SCRIPT;;
      	*"false"*) PATH/TO/YOUR/UNLOCK/SCREEN/SCRIPT;;
		esac
	done
