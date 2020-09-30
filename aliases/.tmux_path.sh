#!/bin/sh
#must make this file executable 'chmod +x ~/.tmux_path.sh'

printf '\033%s\007' $(echo $USER'@') # show full path use $1 instead of $(basename $1)