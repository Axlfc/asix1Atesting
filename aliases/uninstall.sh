#!/usr/bin/env bash

main()
{
    programfiles=("/home/${SUDO_USER}/.bash_aliases" 
    "/home/${SUDO_USER}/.bash_features"
    "/home/${SUDO_USER}/.bash_profile" 
    "/home/${SUDO_USER}/.bash_completion" 
    "/home/${SUDO_USER}/.bashrc" 
    "/home/${SUDO_USER}/.tmux.conf" 
    "/home/${SUDO_USER}/.tmux_path.sh" 
    "/home/${SUDO_USER}/.vimrc" 
    "/home/${SUDO_USER}/.xonshrc" 
    "/home/${SUDO_USER}/.zshrc"
    "/home/${SUDO_USER}/.config/fish/config.fish"
    "/etc/bash_completion.d/ta" 
    "/etc/bash_completion.d/td" 
    "/etc/bash_completion.d/ts" 
    "/etc/bash_completion.d/tsk" 
    "/etc/bash_completion.d/attach")

  if [[ "$(whoami)" != "root" ]]; then
    echo "ERROR: you need to be root"
    exit 1
  else
    for program in ${programfiles[@]}; do
      cp -p ${program}.bak ${program}
      rm -f ${program}.bak
    done
  fi
}

main "%@"
