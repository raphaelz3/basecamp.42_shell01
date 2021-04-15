#!/bin/sh
cat /etc/passwd | awk -F : '{print $1}'  | sed -n "n;p" | rev | sort -r | awk 'NR >= ENVIRON["FT_LINE1"] && NR <= ENVIRON["FT_LINE2"]' | tr '\n' ',' | sed 's/,/, /g' | sed 's/, $/./'