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
  programfiles=(".bash_aliases" ".bash_functions" ".bash_profile" ".bashrc" ".tmux.conf" ".tmux_path.sh")

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
}

main "%@"
