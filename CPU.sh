#!/bin/bash
CPU=$( top -b -n1 | grep "Cpu(s)" | awk '{print $2}' | cut -d "." -f1 )
if [ $CPU -ge 5 ]
then
echo "critical : CPU usage is Hgh ($CPU%) at $(date +%m/%d/%y - %H:%M)"
else 
echo "cpu usage is $CPU"
fi
