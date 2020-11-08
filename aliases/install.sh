#!/usr/bin/env bash
install_program()
{
  if [[ -f "$1" ]]; then
  	name=$(echo '$1' | cut -d '.' -f1)
    cp $1 ${HOME}/$name
    chmod u+x ${HOME}/$name
  fi
}

main()
{
  programfiles=(".bash_aliases" ".bash_functions" ".bash_profile" ".bashrc" ".tmux.conf" ".tmux_path.sh" ".vimrc" ".xonshrc" ".zshrc")

  if [[ "$(whoami)" == "root" ]]; then
    echo "ERROR: you need to be user"
    exit 1
  else
    for program in ${programfiles[@]}; do
      cp ~/${program} ~/${program}.bak
    done
    for program in ${programfiles[@]}; do
    	install_program $program
    done
  fi

  if [[ -f "ta" ]]; then
    cp ta ${HOME}/etc/bash_completion.d/ta
    chmod u+x ${HOME}/etc/bash_completion.d/ta  
  fi

  if [[ -f "td" ]]; then
    cp td ${HOME}/etc/bash_completion.d/td
    chmod u+x ${HOME}/etc/bash_completion.d/td
  fi

  if [[ -f "ts" ]]; then
    cp ts ${HOME}/etc/bash_completion.d/ts
    chmod u+x ${HOME}/etc/bash_completion.d/ts
  fi

  if [[ -f "config.fish" ]]; then
    cp config.fish ${HOME}/.config/fish/config.fish
    chmod u+x ${HOME}/.config/fish/config.fish
  fi
}

main "%@"
