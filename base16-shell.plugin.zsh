script_path=${(%):-%x}
script_path=$(readlink -f $script_path)
BASE16_SHELL_PATH=${script_path%/*}

[ -n "$PS1" ] && [ -s $BASE16_SHELL_PATH/profile_helper.sh ] && \
  "$BASE16_SHELL_PATH/profile_helper.sh"
