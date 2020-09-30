#!/bin/sh
#must make this file executable 'chmod +x ~/.tmux_path.sh'
precmd () 
{
  if [ -n "$TMUX" ]; then
    tmux set-window-option -q window-status-format "#[fg=cyan bg=cyan] | #[fg=white, bg=cyan] #I | ${PWD##/*/} #[fg=cyan, bg=cyan] | "
    tmux set-window-option -q window-status-current-format "#[fg=cyan, bg=cyan] | #[fg=white, bg=cyan] #I | ${PWD##/*/} #[fg=cyan, bg=cyan] | "
  fi
}

tmux set -g status-right '#[fg=green][#[fg=white]#(echo $USER)@#H#{pane_current_path}#[fg=green]][#[fg=black,bold]%d-%h-%Y #[bg=green,fg=white,bold]%H:%M:%S#[default]#[fg=green]]'

printf '\033%s\007' $(basename $1) # show full path use $1 instead of $(basename $1)
