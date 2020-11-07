alias printtest="echo 'test'"

alias :q="exit"
alias ..="cd .."
alias ...="cd ../../"
alias a="echo '---------------Alias----------------';alias"
alias aa="compgen -a"
alias ac="ansible-console"
alias ad="ansible-doc"
alias ah="alias -h"
alias ap="ansible-playbook"
alias aph="ap -h"
alias at="tmux a -t"
alias au="cut -d: -f1 /etc/passwd | so"
alias ax="chmod a+x"
alias app="find app"
alias b="bash"
alias bh="help"
alias bc="bc -l"
alias bi="sudo apt --fix-broken install"
alias book="o ${HOME}/Escritorio/BOOKSCRATCH/UOCBookScratcher/books"
alias browser="lynx"
alias by="cmp"
alias cb="cargo build"
alias cch="cargo check"
alias cf="cargo fmt -v"
alias ci="cargo install"
alias cr="cargo run"
alias ct="cargo test"
alias cw="cargo watch"
alias cwr="cargo watch -x run"
alias cd..="cd .."
alias cp="cp -prb"
alias ct="cut"
alias cap="adb shell screencap -p /sdcard/screen.png && \
           adb pull /sdcard/screen.png && \
           adb shell rm /sdcard/screen.png"
alias clc="qalc"
alias cro="cron"
alias crjobs="crontab -e"
alias cpu="lscpu"
alias cpv="rsync -ah --info=progress2"

alias cplc="fc -ln -1 | awk '{\$1=\$1}1' | pbcopy"
alias count="ind . -type f | wc -l"
alias curli="curl -I"
alias calculator="gnome-calculator"
alias d="wget"
alias df="pydf"
alias di="diff"
alias diff="colordiff"
alias dnstop="dnstop -l 5  eth1"
alias vnstat="vnstat -i eth1"
alias ec="echo"
alias eg="egrep --color"
alias ethtool="ethtool eth1"
alias f="find"
alias fg="fgrep --color"
alias fh="find . -name "
alias fsh="fish"
alias ftc="ls | rev | cut -d'.' -f1 | rev | sort | uniq -c"
alias fw="iptlist"
alias free="free -mt"
alias g="git"
alias gco="git checkout"
alias gd="git diff --ignore-all-space 
                    --ignore-space-at-eol 
                    --ignore-space-change 
                    --ignore-blank-lines -- . 
                    ':(exclude)*package-lock.json'"
alias gdc="git diff --cached"
alias gf="git fetch"
alias gr="grep -Rnwi -C 1 --color . -e $1"
alias grh="g reset --hard"
alias gro="groups"
alias guf="gufw"
alias grub="sudo nano /etc/default/grub"
alias grubup="sudo update-grub"
alias gaa="git add ."
alias gaaa="git add --all"
alias gh="history | grep $1"
alias gbr="git branch -vv"
alias gmv="git mv"
alias grm="git rm"
alias grc="git rm --cached"
alias gstash="git stash"
alias gcache="git config --global credential.helper 'cache --timeout=3600'"
alias gl="git log --graph --all $PRETTY"
# Pretty log.
FORMAT="%C(yellow)%h%Creset %C(green)%G? %Cgreen(%cr) %Creset%C(yellow)%d%Creset %s Creset %C(dim)<%an>%Creset"
PRETTY="--pretty=format:'$FORMAT'"
alias gll="gl --stat"
alias gls="gl --pickaxe-all -G "
alias gt="git shortlog -s -n"
alias status="git status"
alias h="echo h"
alias header="curl -I"
alias i="cat"
alias ipe="curl ipinfo.io/ip"
alias ipi="hostname -I | awk '{print $1}'"
alias ipt="sudo /sbin/iptables"
alias iftop="iftop -i eth1"
alias iptlist="ipt FORWARD"
alias iptlistin="ipt INPUT"
alias iptlistout="iptlistout"
alias j="jobs -l"
alias jc="jupyter console"
alias jcb="jupyter console --kernel bash"
alias jnb="jupyter notebook"
alias jsh="jshell"
alias k="gitk --all --date-order  &"
alias k9="kill -9"
alias ksane='setterm -reset'
alias killbyport="kill -9 \`lsof -i:3000 -t\`"
alias l="clear && ls -Ahl"
alias la="ll -A"
alias lc="ls .ltcr"
alias lk="ls -lSr"
alias ln="ln -i"
alias lr="ll -R"
alias lt="ls --human-readable --size -1 -S --classify"
alias lu="ls -ltur"
alias lx="ls -lXB"
alias lss="less -XF --RAW-CONTROL-CHARS --LINE-NUMBERS --LONG-PROMPT"
alias lll="ls -l $directory$prefix"
alias loc="locate"
alias lsl="ls -lhFA | less"
alias left="ls -t -1"
alias lecho='echo-literally-helper #'
alias m="mcedit -a"
alias man="man %*"
alias md="mkdir"
alias mem="free -m -l -t"
alias mount="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias mkdir="mkdir -pv"
alias mnt="mount | grep -E ^/dev | column -t"
alias mr="make run"
alias mv="mv -i"
alias matrix="cmatrix -sC yellow"
alias music="sfxr"
alias n="nvim"
alias nr="net-restart"
alias nb="npm run build"
alias nd="npm run dev"
alias nf="npm run format"
alias ni="npm install"
alias np="npm run prod"
alias ns="npm start"
alias nt="npm test"
alias nu="npm update"
alias nhp="nohup"
alias npp="notepad-plus-plus"
alias noglob='shopts="$SHELLOPTS"; set -f; noglob_helper'
alias ñ="du -sh * | sort -h"
alias ñs="ls -CF"
alias op="open"
alias p="pypy3"
alias ps="ps auxf"
alias pw="pwd"
alias python="python3"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
# alias pop="popd"
alias port="lsof -i $1"
alias ports="lsof -Pan -i tcp -i udp"
alias PORTS="netstat -tulanp"
alias perms="stat -f %Mp%Lp $1"
alias push="pushd"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias pull="git pull"
alias pt="ptpython"
alias q="exit"
alias r="rm -R"
alias rm="rm -i --preserve-root"
alias root="sudo -i"
alias rs="rsync"
alias rsync="rsync -av --progress"
alias refreshpath="hash -r"
alias s="psg"
alias sd="sed"
alias se="sudo -E bash"
alias sl="sleep"
alias so="sort"
alias sv="su v"
alias sid="env | grep ORACLE_SID"
alias sha1="openssl sha1"
alias sample="teamocil sample"
alias speed="speedtest-cli --server 17233 --simple"
alias serverspeed="speedtest-cli --list"
alias systail="tail -f /var/log/system.log"
alias t="tmux"
alias td="tmux detach"
alias tks="tmux kill-server"
alias tls="t ls -F '#{session_attached} #{session_name}'"
alias tsh="tcsh"
alias tconf="gedit ${HOME}/.tmux.conf"
alias tconfig="tconf"
alias trefresh="t refresh-client -S"
alias tupgrade="t source ${HOME}/.tmux.conf"
alias ttmplt="teamocil sample"
alias terminal="qterminal"
alias tedittmplt="gedit ${HOME}/.teamocil/sample.yml"
alias tcpdump="tcpdump -i eth1"
alias tx="tilix &"
alias tk="t kill-ses"
alias tm="tmate"
alias newt="tmux new -s"
alias oldt="tmux new -s default"
alias tl="t ls"
alias tq="jupyter qtconsole"
alias top="atop"
alias txt="gedit"
alias tds="t a #"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias u="du -h --max-depth"
alias ua="useradd"
alias udel="userdel"
alias un="uniq"
alias us="users"
alias v="nvim"
alias installvimplugins="vim +PluginInstall +qall"
alias editvimrc="sudo nano ${HOME}/.vimrc"
alias ve="python3 -m venv ./venv"
alias va="source ./venv/bin/activate"
alias vi='eval `resize`;vi'
alias vis="vis '+set si'"
alias veva="ve; va"
alias w="wireshark"
alias wh="which"
alias wd="date +%A"
alias wr="write"
alias wl="wall"
alias wll="wall"
alias www="python -m SimpleHTTPServer 8000"
alias wget="wget -c"
alias whrs="whereis"
alias whts="whatis"
alias whence="type -a"
alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"
alias x="clear && ls"
alias xo="xdg-open"
alias xt="xterm -bg black -fg white &"
alias xyz="cat $0"
alias zs="zsh"
alias addgro="groupadd"
alias delgro="groupdel"
alias youtubewav="youtube-dl --extract-audio --audio-format wav"
alias firewall="sudo ufw status verbose"
alias enableFirewall="sudo ufw enable"
alias disableFirewall="sudo ufw disable"
alias httpTest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -S"
alias httpReload="sudo /usr/sbin/apachectl -k graceful"
alias httpRestart="sudo /etc/init.d/httpd restart"

alias gedit="featherpad"
alias fedit="find . -name '$1*' -print0 | xargs -0 gedit"
alias edit="nedit"

alias ASIX="cd ${HOME}/Escritorio/git/asix1Atesting"
alias CTL="sudo systemctl"
alias CALENDAR="cal"
alias CALCULATOR="bc"
alias DOC="cd ${HOME}/Documentos"
alias DSKTP="cd ${HOME}/Escritorio"
alias DWNLDS="cd ${HOME}/Descargas"
alias DSKTPFLDR="cd /usr/share/applications"
alias GIT="cd ${HOME}/Escritorio/git"
alias HDD="cd ..; cd ..; cd /media/sf_Shared_Files; o; exit"
alias HM="cd ${HOME}"
alias IDEA="cd ${HOME}/Escritorio/PythonFiles/ideaIE-2020.2.1/idea-IE-202.6948.83/bin; ./idea.sh"
alias IDEAPROJECTS="cd ${HOME}/IdeaProjects"
alias LOCALDSKTPFLDR="cd ${HOME}/.local/share/applications"
alias MOUNT="sudo systemctl --type=mount"
alias MCDSTATS="/usr/bin/memcached-tool 10.10.27.11:11211 stats"
alias MCDSHOW="/usr/bin/memcached-tool 10.10.27.11:11211 display"
alias OS="uname"
alias PSMEM="ps auxf | sort -nr -k 4"
alias PSMEM10="ps auxf | sort -nr -k 4 | head -10"
alias PSCPU="ps auxf | sort -nr -k 3"
alias PSCPU10="ps auxf | sort -nr -k 3 | head -10"
alias PYTHON="cd ${HOME}/IdeaProjects/PythonExample"
alias SHELL="echo $SHELL"
alias SERVICE="sudo systemctl --type=service"
alias THM="theme list"
alias TMP="cd ${HOME}/tmp"
alias TIMER="sudo systemctl -t timer"
alias TRASH="cd ${HOME}/.local/share/Trash/*"
alias TMPLTS="cd ${HOME}/Plantillas"
alias TOTALUSAGE="df -hl --total | grep total"
alias UF="sudo systemctl list-unit-files"
alias USAGE="du -h --max-depth"
alias XARGS='xargs -r'

alias Install="sudo apt-get install || sudo apt install"
alias Reboot="sudo reboot"
alias Shutdown="shutdown -r now"
alias Trash="rm -rf ${HOME}/.local/share/Trash/*"
alias Update="sudo apt-get update && sudo apt-get upgrade -y"

alias proxyon="networksetup -setwebproxystate Wi-Fi on; networksetup -setsecurewebproxystate Wi-Fi off;"
alias proxyoff="networksetup -setwebproxystate Wi-Fi off; networksetup -setsecurewebproxystate Wi-Fi off;"
alias localhost="ssh localhost"

alias sshStatus="sudo systemctl status sshd"
alias sshCheck="sudo service ssh status"
alias sshStart="sudo systemctl start sshd"
alias sshRestart="sudo systemctl restart sshd"
alias sshStop="sudo systemctl stop sshd"
alias sshEnable="sudo systemctl enable ssh"
alias sshDisable="sudo systemctl disable sshd"
alias sshconf="sshConfig"
alias sshConf="sshConfig"
alias sshConfig="nano ${HOME}/.ssh/config"
alias packetracer="packettracer"

alias 2p="tses twopanes"
alias 3p="tses threepanes"
alias bp="tses blank"
alias 4p="tses fourpanes"
alias start="tses start"
alias begin="tses shorthands"
alias mysession="session mysession"
alias editalias="gedit ${HOME}/.bash_aliases"
alias upgradealias="source ~/.bashrc"

bintohex()
{
  bintodec $1 | dectohex
}
bintoutf()
{
  bintodec $1 | dectoutf
}
hextobin()
{
	hextodec $1 | dectobin
}
hextoutf()
{
  hextodec $1 | dectoutf
}
utftobin()
{
	utftodec $1 | dectobin
}
utftohex()
{
  utftodec $1 | dectohex
}

