show_kube() { # save this module in a file with the name <module_name>.sh
  export KUBE_TMUX_SYMBOL_ENABLE=false
  SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

  local index=$1 # this variable is used by the module loader in order to know the position of this module 
  local icon="$(get_tmux_option "@catppuccin_kube_icon" "󱃾")"
  local color="$(get_tmux_option "@catppuccin_kube_color" "#66ccff")"
  local text="$(get_tmux_option "@catppuccin_kube_text" "$(/bin/bash ${SCRIPT_DIR}/../extra/kube.tmux)")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo $module 
}
