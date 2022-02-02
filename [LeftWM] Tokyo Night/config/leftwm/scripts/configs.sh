configfile="$HOME/.config/configs"

get_filepath() {
  cat "$configfile" \
    | rofi -dmenu -i -p 'config' \
    | sed 's/^.*~//g'
}

configpath="$(get_filepath)"
if [[ ! -z "$configpath" ]]; then
  xdg-open "$HOME/$configpath"
fi
