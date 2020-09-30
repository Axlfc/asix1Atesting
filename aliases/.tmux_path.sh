#!/bin/sh
#must make this file executable 'chmod +x ~/.tmux_path.sh'
printf '\033%s\007' $(basename $1) # show full path use $1 instead of $(basename $1)
