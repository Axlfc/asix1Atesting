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