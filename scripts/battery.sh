#!/bin/bash
# Shows the battery information with font awesome icons
# Author: Anderson Fernandes <https://github.com/andersonfernandes>

battery_0=""
battery_1=""
battery_2=""
battery_3=""
battery_4=""

percent=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage:" | grep -o '[0-9]*')

state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state:" | grep "discharging")
if [$state -eq ""]; then
	state="CHR"
else
	state="DIS"
fi

if [ $percent -le 100 ] && [ $percent -gt 80 ]; then
	echo  "$battery_4 $percent% $state"
elif [ $percent -le 80 ] && [ $percent -gt 60 ]; then
	echo "$battery_3 $percent% $state"
elif [ $percent -le 60 ] && [ $percent -gt 40 ]; then
	echo "$battery_2 $percent% $state"
elif [ $percent -le 40 ] && [ $percent -gt 20 ]; then
	echo "$battery_1 $percent% $state"
elif [ $percent -le 20 ] && [ $percent -gt 0 ]; then
	echo "$battery_0 $percent% $state"
fi
