main()
{
  if [[ "$(whoami)" == "root" ]]; then
    echo "ERROR: you need to be user"
    exit 1
  else
    if [[ -f "dectohex.py" ]]; then
      cp dectohex.py ${HOME}/.local/bin/dectohex
      chmod u+x ${HOME}/.local/bin/dectohex
    fi

    if [[ -f "hextodec.py" ]]; then
      cp hextodec.py ${HOME}/.local/bin/hextodec
      chmod u+x ${HOME}/.local/bin/hextodec
    fi

    if [[ -f "bintodec.py" ]]; then
      cp bintodec.py ${HOME}/.local/bin/bintodec
      chmod u+x ${HOME}/.local/bin/bintodec
    fi

    if [[ -f "dectobin.py" ]]; then
      cp dectobin.py ${HOME}/.local/bin/dectobin
      chmod u+x ${HOME}/.local/bin/dectobin
    fi

  fi

}

main "%@"