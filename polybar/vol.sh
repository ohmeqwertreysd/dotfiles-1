#!/bin/bash

vol_level=$(amixer -D pulse sget Master | grep -i Left: | sed -r 's/  Front Left: Playback [^\[]* \[//' | sed -r 's/\] \[.*\]//')

RED='\033[0;31m'

if [ "$vol_level" = "0%" ] || [ $(amixer -D pulse sget Master | grep -i Left: | sed -r 's/.*\] \[//') = "off]" ];then
	echo -e "   $vol_level"
else
	echo -e "  $vol_level"
fi
