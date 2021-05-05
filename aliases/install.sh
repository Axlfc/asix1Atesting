#!/usr/bin/env bash
install_program()
{
  file_name=$(echo "$1" | rev | cut -d "/" -f1 | rev)
  if [[ -f "$file_name" ]]; then
    cp -p "${DIR}/${file_name}" "$1"
    chmod 751 "$1"
  fi
}

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
    # We perform a secure backup of previous files with same name
    for program in "${programfiles[@]}"; do
      cp "${program}" "${program}.bak"
    done
    for program in "${programfiles[@]}"; do
    	install_program "${program}"
    done
    if [[ -f "/home/${SUDO_USER}/.bash_functions" ]]; then
      echo "source /home/${SUDO_USER}/.bash_functions" >> "/home/${SUDO_USER}/.bashrc"
    fi
  fi
}


DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${DIR}" ]]; then
  DIR="${PWD}"
fi


main "%@"
