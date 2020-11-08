#!/usr/bin/env bash

main()
{
  programfiles=(".bash_aliases" ".bash_functions" ".bash_profile" ".bashrc" ".tmux.conf" ".tmux_path.sh" ".vimrc" ".xonshrc" ".zshrc")

  if [[ "$(whoami)" == "root" ]]; then
    echo "ERROR: you need to be user"
    exit 1
  else
    for program in ${programfiles[@]}; do
      mv ~/${program}.bak ~/${program}
    done
  fi
  rm -f ${HOME}/etc/bash_completion.d/ta
  rm -f ${HOME}/etc/bash_completion.d/td
  rm -f ${HOME}/etc/bash_completion.d/ts
  rm -f cp config.fish ${HOME}/.config/fish/config.fish

}

main "%@"
