# some more ls aliases

alias _='sudo'
alias _i='sudo -i'
alias cls='clear;ls'
alias em='emacs -nw'
alias fucking='sudo'
#alias l='clear && ls -lAh --color=auto'
alias lt="ls --human-readable --size -1 -S --classify"
alias please='sudo'
alias plz="fc -l -1 | cut -d' ' -f2- | xargs sudo"

# asix1Atesting aliases
alias ...="cd ../../"
alias ..="cd .."
alias :q!="exit"
alias :q="exit"
alias ASIX="cd ${XDG_DESKTOP_DIR}/git/asix1Atesting"
alias CALENDAR="cal"
alias CUSTOMIZER="cd ${XDG_DESKTOP_DIR}/git/Linux-Auto-Customizer"
alias DCMNTS="cd ${XDG_DOCUMENTS_DIR}"
alias DSKTP="cd ${XDG_DESKTOP_DIR}"
alias DSKTPFLDR="cd /usr/share/applications"
alias DWNLDS="cd ${XDG_DESKTOP_DIR}"
alias GIT="cd ${XDG_DESKTOP_DIR}/git"
alias HDD="cd ${HOME}; cd ..; cd /media/sf_Shared_Files"
alias HM="cd ${HOME}"
alias MSC="cd ${XDG_MUSIC_DIR}"
alias LOCALDSKTPFLDR="cd ${HOME}/.local/share/applications"
alias OS="uname"
alias PORTS="netstat -tulanp"
alias Reboot="sudo reboot"
alias SERVICE="sudo systemctl --type=service"
alias SHELL="echo $SHELL"
alias Shutdown="shutdown -h now"
alias TIMER="sudo systemctl -t timer"
alias TMP="cd ${HOME}/tmp"
alias TMPLTS="cd ${HOME}/Templates"
alias TOTALUSAGE="df -hl --total | grep total"
alias AutoClean="sudo apt-get autoclean"
alias AutoRemove="sudo apt-get autoremove"
alias Install="sudo apt-get install -y"
alias Purge="sudo apt purge -y"
alias Remove="apt-get remove -y"
alias TRASH="cd ${HOME}/.local/share/Trash/*"
alias Trash="rm -rf ${HOME}/.local/share/Trash/*"
alias UF="sudo systemctl list-unit-files"
alias USAGE="du -h --max-depth"
alias Update="sudo apt-get update && sudo apt-get upgrade -y"
alias XARGS='xargs -r'
alias a="echo '---------------Alias----------------';compgen -a"
alias activate="conda activate"
alias add="git add"
alias addgro="groupadd"
alias all="git add --all"
alias at="tmux a -t"
alias axlpush='git push origin axl'
alias b="bash"
alias bi="sudo apt --fix-broken install"
alias branch="git branch -vv"
alias cb="cargo build"
alias cch="cargo check"
alias cf="cargo fmt -v"
alias cg="cargo generate --git $1"
alias checkout='git checkout'
alias ci="cargo install"
alias cpu="lscpu"
alias cr="cargo run"
alias crjobs="crontab -e"
alias cro="cron"
alias ct="cargo test"
alias cw="cargo watch"
alias cwr="cargo watch -x run"
alias dcd="docker down"
alias dci="docker inspect"
alias dciip="docker inspect -f \"{{ .NetworkSettings.IPAddress }}\""
alias dcl="docker ps"
alias dcla="docker ps -a"
alias dcp="docker container prune -f"
alias dcr="docker restart"
alias dcs="docker start"
alias dcb="docker-compose build --no-cache"
alias dcc="docker-compose config"
alias dcd="docker-compose down"
alias dcu="docker-compose up"
alias dcv="docker-compose -v"
alias deactivate="conda deactivate"
alias df="pydf -ha"
alias delgro="groupdel"
alias di="diff"
alias diff="colordiff"
alias dil="docker images"
alias dip="docker image prune -f"
alias disableFirewall="sudo ufw disable"
alias dni="docker network inspect"
alias dnl="docker network ls"
alias dnp="docker network prune -f"
alias dnrm="docker network rm"
alias download="wget"
alias dvc="docker volume create"
alias dve="docker -v"
alias dvi="docker volume inspect"
alias dvl="docker volume ls"
alias dvp="docker volume prune -f"
alias dvrm="docker volume rm"
alias editalias="pluma ${HOME}/.bash_aliases"
alias editbashrc="pluma ${HOME}/.bashrc"
alias editfunctions="pluma ${HOME}/.bash_functions"
alias editgrub="sudo pluma /etc/default/grub"   
alias editprofile="pluma ${HOME}/.profile"
alias edittmux="pluma ${HOME}/.tmux.conf"
alias editvimrc="sudo pluma ${HOME}/.vimrc"
alias editxonshrc="gedit ${HOME}/.xonshrc"
alias editzshrc="gedit ${HOME}/.zshrc"
alias enableFirewall="sudo ufw enable"
alias f="find"
alias fetch="git fetch"
alias firewall="sudo ufw status verbose"
alias fn="find . -name "
alias g="git"
alias ghost="gs"
alias gris="history | grep $1"
alias header="curl -I"
alias httpReload="sudo /usr/sbin/apachectl -k graceful"
alias httpRestart="sudo /etc/init.d/httpd restart"
alias httpTest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -S"
alias i="lolcat"
alias installvimplugins="vim +PluginInstall +qall"
alias ipe="curl icanhazip.com"
alias ipi="hostname -I | awk '{print $1}'"
alias ipt="sudo /sbin/iptables"
alias j="jobs -l"
alias jc="jupyter console"
alias jcb="jupyter console --kernel bash"
alias jcz="jupyter console --kernel xonsh"
alias jcz="jupyter console --kernel zsh"
alias jnb="jupyter notebook"
alias jsh="jshell"
alias k9="kill -9"
alias k="gitk --all --date-order  &"
alias killbyport="k9 \`lsof -i:3000 -t\`"
alias lab="jupyter lab"
alias left="ls -t -1"
alias loc="locate"
alias localhost="ssh localhost"
alias man="man %*"
alias matrix="cmatrix -sC yellow"
alias mkdeploy='mkpush'
alias mkpush='mkdocs gh-deploy --clean'
alias mkrun='mkdocs serve'
alias mr="make run"
alias myip="curl icanhazip.com"
alias nb="npm run build"
alias nd="npm run dev"
alias nf="npm run format"
alias nhp="nohup"
alias ni="npm install"
alias np="npm run prod"
alias nr="net-restart"
alias notebook="jupyter notebook"
alias oldt="t new -s default"
alias op="open"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
alias port="lsof -i $1"
alias ports="lsof -Pan -i tcp -i udp"
alias pull='git pull'
alias push='git push origin master'
alias q="exit"
alias refreshpath="hash -r"
alias resethead='git reset HEAD --hard'
alias rs="rsync"
alias rsync="rsync -av --progress"
alias serverspeed="speedtest-cli --list"
alias speed="speedtest-cli --server 17233 --simple"
alias sshCheck="sudo service ssh status"
alias sshConf="sshConfig"
alias sshConfig="pluma ${HOME}/.ssh/config"
alias sshDisable="sudo systemctl disable sshd"
alias sshEnable="sudo systemctl enable ssh"
alias sshRestart="sudo systemctl restart sshd"
alias sshStart="sudo systemctl start sshd"
alias sshStatus="sudo systemctl status sshd"
alias sshStop="sudo systemctl stop sshd"
alias sshconf="sshConfig"
alias status="git status"
alias t="tmux"
alias tbash="tmux new-session /bin/bash \; set default-shell /bin/bash"
alias tconfig="editterminal"
alias tds="t a #"
alias tk="t kill-ses"
alias tks="t kill-server"
alias tl="t ls"
alias tls="t ls -F '#{session_attached} #{session_name}'"
alias top="htop"
alias treee="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias trefresh="t refresh-client -S"
alias tupgrade="t source ${HOME}/.tmux.conf"
alias txonsh="tmux new-session ~/.local/bin/xonsh \; set default-shell /bin/xonsh"
alias tzsh="tmux new-session /bin/zsh \; set default-shell /bin/zsh"
alias u="du -h --max-depth"
alias ua="useradd"
alias udel="userdel"
alias us="users"
alias va="source ./venv/bin/activate"
alias ve="python3 -m venv ./venv"
alias veva="ve; va"
alias wd="date +%A"
alias wget="wget -c"
alias whence="type -a"
alias whrs="whereis"
alias whts="whatis"
alias wiki="wikit $1"
alias x="clear && ls"
alias xo="xdg-open"
alias youtubewav="youtube-dl --extract-audio --audio-format wav"
alias ñ="du -sh * | sort -h"

#chorras
alias fancy='figlet $@'
alias life='figlet 42 | lolcat'
alias tuxsay='cowsay -f tux '


alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'


alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l="ls -lAh "

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#Fails UTF-8 friendly
alias cear='clear'
alias ckear='clear'
alias cl='clear'
alias cle='clear'
alias clea='clear'
alias cler='clear'
alias cñear='clear'
alias ec="echo"
alias exi='exit'
alias exot='exit'
alias etxi='exit'
alias exti='exit'
alias ghis="gris"
alias gi="git"
alias gis="gris"
alias it="git"
alias pw="pwd"
alias ris="gris"
alias sl="sleep"
alias sle="sleep"
alias slee="sleep"
alias so="sort"
alias sor="sort"
alias wl="wall"
alias wll="wall"
alias xit='exit'
alias ñs="ls -CF"


#Pendant 
#alias cpv="rsync -ah --info=progress2"
#alias gr="grep -Rnwi -C 1 --color . -e $1"
#alias eg="egrep --color"
#alias fg="fgrep --color"

#alias lecho='echo-literally-helper #'

#alias lsl="ls -lhFA | less"
#alias lss="less -XF --RAW-CONTROL-CHARS --LINE-NUMBERS --LONG-PROMPT"


#Possible functions
#alias PSCPU10="ps auxf | sort -nr -k 3 | head -10"
#alias PSCPU="ps auxf | sort -nr -k 3"
#alias PSMEM10="ps auxf | sort -nr -k 4 | head -10"
#alias PSMEM="ps auxf | sort -nr -k 4"
#alias ns="npm start"
#alias nt="npm test"
#alias nu="npm update"
#alias pop="popd"
#alias proxyoff="networksetup -setwebproxystate Wi-Fi off; networksetup -setsecurewebproxystate Wi-Fi off;"
#alias proxyon="networksetup -setwebproxystate Wi-Fi on; networksetup -setsecurewebproxystate Wi-Fi off;"
#alias ps="ps auxf"
#alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
#alias push="pushd"
#alias sha1="openssl sha1"
#alias sshCompile="echo -n >! ~/.ssh/config && cat ~/.ssh/configs/*.config >> ~/.ssh/config && cat ~/.ssh/configs/default >> ~/.ssh/config"
#alias systail="tail -f /var/log/system.log"

#alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"

#alias CALCULATOR="bc"

# git config file in  '~/.gitconfig'

#alias gmv="git mv"
#alias grm="git rm"
#alias grc="git rm --cached"
#alias gstash="git stash"
#alias gcache="git config --global credential.helper 'cache --timeout=3600'"
#alias gl="git log --graph --all $PRETTY"
# Pretty log.
#FORMAT="%C(yellow)%h%Creset %C(green)%G? %Cgreen(%cr) %Creset%C(yellow)%d%Creset %s Creset %C(dim)<%an>%Creset"
#PRETTY="--pretty=format:'$FORMAT'"
#alias gll="gl --stat"
#alias gls="gl --pickaxe-all -G "
#alias gp="git push origin master"
#alias gt="git shortlog -s -n"

