SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$SCRIPT_DIR"/config

alias zu="sudo -u $MINECRAFT_USER bash"
for scr in "$SCRIPT_DIR"/*; do
  if [[ -x $scr ]]; then
    scr=`basename $scr`
    alias $scr="sudo -u $MINECRAFT_USER $SCRIPT_DIR/$scr"
    echo $scr
  fi
done

alias interact_with_minecraft_screen_session="sudo -u $MINECRAFT_USER bash -c \"script /dev/null -c $SCRIPT_DIR/interact_with_minecraft_screen_session\""
