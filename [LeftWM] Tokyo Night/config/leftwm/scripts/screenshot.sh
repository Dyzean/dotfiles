#!/usr/bin/env sh
export LANG="POSIX"

# Usage:
# for full screenshot: /path/to/screenshot.sh full
# for area screenshot: /path/to/screenshot.sh full

maimselect="maim -s --noopengl --capturebackground --hidecursor"
maimfull="maim --noopengl --capturebackground --hidecursor"
tempfile="/tmp/screenshot-$(date +%Y%m%d_%H%M%S).png"

notification() {
  # Check if users cancel the screenshot
  if [ ! -f "$tempfile" ]; then
    dunstify "Screenshot Failed 﫞 " "Screenshot are canceled by user"
    exit 0
  else
    dunstify -i "$tempfile" "Screenshot  " "Screenshot captured and copied to clipboard!"
  fi
}

case $1 in

  area)
    $maimselect -s "$tempfile" && xclip -selection c -t image/png < "$tempfile"
    notification area &

    sleep 1
    rm "$tempfile"
    ;;

  full)
    $maimfull "$tempfile" && xclip -selection c -t image/png < "$tempfile"
    notification full &

    sleep 1
    rm "$tempfile"
    ;;

esac
