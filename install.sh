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

    if [[ -f "bincalc.py" ]]; then
      cp bincalc.py ${HOME}/.local/bin/bincalc
      chmod u+x ${HOME}/.local/bin/bincalc
    fi

    if [[ -f "asciitobin.py" ]]; then
      cp asciitobin.py ${HOME}/.local/bin/asciitobin
      chmod u+x ${HOME}/.local/bin/asciitobin
    fi

    if [[ -f "bintoascii.py" ]]; then
      cp bintoascii.py ${HOME}/.local/bin/bintoascii
      chmod u+x ${HOME}/.local/bin/bintoascii
    fi

  fi
  packettracer_launcher="[Desktop Entry]
Type=Application
Name=Packer Tracer
Icon=/opt/pt/art/Workspace/Logical/iMultiDevices@2x.png
Terminal=false
Exec=packettracer
"
echo -e "${packettracer_launcher}" > ${HOME}/Escritorio/packettracer.desktop

}

main "%@"