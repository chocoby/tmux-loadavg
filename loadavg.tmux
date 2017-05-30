#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/helpers.sh"

cpu_loadavg="#($CURRENT_DIR/scripts/cpu_loadavg.sh)"
cpu_loadavg_interpolation_string="\#{cpu_loadavg}"

do_interpolation() {
  local string="$1"
  local interpolated="${string/$cpu_loadavg_interpolation_string/$cpu_loadavg}"

  echo "$interpolated"
}

update_tmux_option() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"

  set_tmux_option "$option" "$new_option_value"
}

update_tmux_option "status-right"
