# some more ls aliases

alias cls='clear;ls'
alias l='clear && ls -lAh --color=auto'
alias lt="ls --human-readable --size -1 -S --classify"
alias em='emacs -nw'
alias _='sudo'
alias _i='sudo -i'
alias please='sudo'
alias plz="fc -l -1 | cut -d' ' -f2- | xargs sudo"
alias fucking='sudo'

# asix1Atesting aliases
alias ñ="du -sh * | sort -h"
alias ñs="ls -CF"
alias ..="cd .."
alias ...="cd ../../"
alias :q="exit"
alias :q!="exit"
alias ASIX="cd ${HOME}/Desktop/git/asix1Atesting"
alias CALENDAR="cal"
alias CUSTOMIZER="cd ${HOME}/Desktop/git/Linux-Auto-Customizer"
alias DCMNTS="cd ${HOME}/Documentos"
alias DSKTP="cd ${HOME}/Desktop"
alias DSKTPFLDR="cd /usr/share/applications"
alias DWNLDS="cd ${HOME}/Descargas"
alias GIT="cd ${HOME}/Desktop/git"
alias HDD="cd ${HOME}; cd ..; cd /media/sf_Shared_Files"
alias HM="cd ${HOME}"
alias LOCALDSKTPFLDR="cd ${HOME}/.local/share/applications"
alias OS="uname"
alias PORTS="netstat -tulanp"
alias Reboot="sudo reboot"
alias SHELL="echo $SHELL"
alias SERVICE="sudo systemctl --type=service"
alias Shutdown="shutdown -h now"
alias TIMER="sudo systemctl -t timer"
alias TMP="cd ${HOME}/tmp"
alias TMPLTS="cd ${HOME}/Templates"
alias TOTALUSAGE="df -hl --total | grep total"
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

alias d="wget"
alias di="diff"
alias deactivate="conda deactivate"
alias dve="docker -v"
alias dil="docker images"
alias dip="docker image prune -f"
alias dcl="docker ps"
alias dcla="docker ps -a"
alias dcp="docker container prune -f"
alias dci="docker inspect"
alias dciip="docker inspect -f \"{{ .NetworkSettings.IPAddress }}\""
alias dcs="docker start"
alias dcd="docker down"
alias dcr="docker restart"
alias dnl="docker network ls"
alias dni="docker network inspect"
alias dnrm="docker network rm"
alias dnp="docker network prune -f"
alias dvc="docker volume create"
alias dvl="docker volume ls"
alias dvrm="docker volume rm"
alias dvp="docker volume prune -f"
alias dvi="docker volume inspect"
alias dcv="docker-compose -v"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build --no-cache"
alias dcc="docker-compose config"
alias diff="colordiff"
alias delgro="groupdel"
alias df="pydf -ha"
alias disableFirewall="sudo ufw disable"

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
alias gh="history | grep $1"
alias header="curl -I"
alias httpTest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -S"
alias httpReload="sudo /usr/sbin/apachectl -k graceful"
alias httpRestart="sudo /etc/init.d/httpd restart"
alias i="lolcat"
alias ipe="curl icanhazip.com"
alias ipi="hostname -I | awk '{print $1}'"
alias ipt="sudo /sbin/iptables"
alias j="jobs -l"
alias jsh="jshell"
alias k="gitk --all --date-order  &"
alias k9="kill -9"
alias killbyport="k9 \`lsof -i:3000 -t\`"
alias left="ls -t -1"
alias man="man %*"
alias matrix="cmatrix -sC yellow"
alias mr="make run"
alias myip="curl icanhazip.com"
alias oldt="t new -s default"
alias op="open"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
alias port="lsof -i $1"
alias ports="lsof -Pan -i tcp -i udp"
alias pull='git pull'
alias push='git push origin master'
alias q="exit"
alias resethead='git reset HEAD --hard'
alias refreshpath="hash -r"
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
alias tconf="tconfig"
alias tconfig="editterminal"
alias tds="t a #"
alias tk="t kill-ses"
alias tks="t kill-server"
alias tl="t ls"
alias tls="t ls -F '#{session_attached} #{session_name}'"
alias top="htop"
alias trefresh="t refresh-client -S"
alias treee="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias tupgrade="t source ${HOME}/.tmux.conf"
alias u="du -h --max-depth"
alias ua="useradd"
alias udel="userdel"
alias us="users"
alias veva="ve; va"
alias ve="python3 -m venv ./venv"
alias va="source ./venv/bin/activate"
alias wd="date +%A"
alias wget="wget -c"
alias whence="type -a"
alias whrs="whereis"
alias whts="whatis"
alias wiki="wikit $1"
alias x="clear && ls"
alias xo="xdg-open"
alias youtubewav="youtube-dl --extract-audio --audio-format wav"


#chorras
alias tuxsay='cowsay -f tux '
alias life='figlet 42 | lolcat'
alias fancy='figlet $@'


#Fails
alias cl='clear'
alias ckear='clear'
alias cear='clear'
alias clea='clear'
alias exot='exit'
alias exi='exit'
alias ec="echo"
alias wl="wall"
alias wll="wall"
alias pw="pwd"

alias sl="sleep"
alias slee="sleep"
alias sle="sleep"
alias so="sort"
alias sor="sort"


#Pendant 
#alias jc="jupyter console"
#alias jcb="jupyter console --kernel bash"
#alias jnb="jupyter notebook"
#alias jsh="jshell"
#alias lss="less -XF --RAW-CONTROL-CHARS --LINE-NUMBERS --LONG-PROMPT"
#alias loc="locate"
#alias lsl="ls -lhFA | less"
#alias lecho='echo-literally-helper #'


#alias nr="net-restart"
#alias nb="npm run build"
#alias nd="npm run dev"
#alias nf="npm run format"
#alias ni="npm install"
#alias np="npm run prod"
#alias ns="npm start"
#alias nt="npm test"
#alias nu="npm update"
#alias nhp="nohup"


#alias PSMEM="ps auxf | sort -nr -k 4"
#alias PSMEM10="ps auxf | sort -nr -k 4 | head -10"
#alias PSCPU="ps auxf | sort -nr -k 3"
#alias PSCPU10="ps auxf | sort -nr -k 3 | head -10"
#alias ps="ps auxf"
#alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

#alias pop="popd"
#alias push="pushd"

#alias sha1="openssl sha1"


#alias cpv="rsync -ah --info=progress2"


#alias gr="grep -Rnwi -C 1 --color . -e $1"

#alias jc="jupyter console"
#alias jcb="jupyter console --kernel bash"
#alias jnb="jupyter notebook"


#alias fg="fgrep --color"
#alias fh="find . -name "
#alias eg="egrep --color"

#alias mkpush='mkdocs gh-deploy --clean'
#alias mkdeploy='mkpush'
#alias mkrun='mkdocs serve'

#alias installvimplugins="vim +PluginInstall +qall"

#alias tzsh="tmux new-session /bin/zsh \; set default-shell /bin/zsh"
#alias tedittmplt="gedit ${HOME}/.teamocil/sample.yml"
#alias ttmplt="teamocil sample"


#alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"

#alias sshCompile="echo -n >! ~/.ssh/config && cat ~/.ssh/configs/*.config >> ~/.ssh/config && cat ~/.ssh/configs/default >> ~/.ssh/config"


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

#alias systail="tail -f /var/log/system.log"

#alias CALCULATOR="bc"

#alias proxyon="networksetup -setwebproxystate Wi-Fi on; networksetup -setsecurewebproxystate Wi-Fi off;"
#alias proxyoff="networksetup -setwebproxystate Wi-Fi off; networksetup -setsecurewebproxystate Wi-Fi off;"
#alias localhost="ssh localhost"

