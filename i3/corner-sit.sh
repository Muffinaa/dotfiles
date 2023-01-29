#!/bin/bash
cmd="$1"
shift 

read width height <<< $(xdotool getdisplaygeometry)

read wwidth <<< $(xdotool getactivewindow getwindowgeometry | grep Geometry | cut -d " " -f4 | cut -d"x" -f1)
read wheight <<< $(xdotool getactivewindow getwindowgeometry | grep Geometry | cut -d " " -f4 | cut -d"x" -f2)

barheight=25
gap=4
border=3

case "$cmd" in
'')
  echo "Usage: $0 <left|right|top|bottom|top-left|top-right|bottom-left|bottom-right> [optional window search]"
  echo ""
  echo "Search options are passed to 'xdotool search' e.g."
  echo "   $0 left --name findwindowbyname"
  echo "---------------"
  xdotool search

;;  
'left')
    xdotool getwindowfocus windowmove $winid $(($gap + $border)) $(($height/2 - $wheight/2 + $border + barheight))
;;
'right')
    xdotool getwindowfocus windowmove $winid $(($width-$wwidth-$border-$gap)) $(($height/2 - $wheight/2 + $border + $barheight))
;;
'top')
    xdotool getwindowfocus windowmove $winid $(( $width/2 - $wwidth/2 - $border)) $(($barheight + $gap + $border))
;;
'center')
    xdotool getwindowfocus windowmove $winid $(( $width/2 - $wwidth/2 - $border)) $(($height/2 - $wheight/2 + $barheight + $border))
;;
'bottom')
    xdotool getwindowfocus windowmove $winid $(( $width/2 - $wwidth/2 - $border)) $(($height - $wheight - $gap - $border))
;;
'top-left')
    xdotool getwindowfocus windowmove $winid $(($gap + $border)) $(($barheight + $gap + $border))
;;
'top-right')
    xdotool getwindowfocus windowmove $winid $(($width - $wwidth - $border - $gap)) $(($barheight + $gap + $border))
;;
'bottom-left')
    xdotool getwindowfocus windowmove $winid $(($gap + $border)) $(($height - $wheight - gap - border))
;;
'bottom-right')
    xdotool getwindowfocus windowmove $winid $(($width - $wwidth - $border - $gap)) $(($height - $wheight - gap - border))
;;
esac

