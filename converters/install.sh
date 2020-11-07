install_program()
{
  if [[ -f "$1" ]]; then
  	name=$(echo '$1' | cut -d '.' -f1)
    cp $1 ${HOME}/.local/bin/$name
    chmod u+x ${HOME}/.local/bin/$name
  fi
}

main()
{
  converters=("dectohex.py" "hextodec.py" "bintodec.py" "dectobin.py" "dectoutf.py" "utftodec.py")

  if [[ "$(whoami)" == "root" ]]; then
    echo "ERROR: you need to be user"
    exit 1
  else
    for program in ${converters[@]}; do
    	install_program $program
    done
  fi
}

main "$@"
