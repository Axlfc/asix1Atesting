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
}

main "%@"
