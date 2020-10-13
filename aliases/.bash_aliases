alias printestt="echo 'test'"
alias :q="exit"
alias a="echo '---------------Alias----------------';alias"
alias aa="compgen -a"
alias b="bash"
c()
{
	if [[ -d "$1" ]]; then
		cd $1
	elif [[ -f "$1" ]]; then
		cat $1
	else
		clear
	fi
}
alias cap="adb shell screencap -p /sdcard/screen.png && \
           adb pull /sdcard/screen.png && \
           adb shell rm /sdcard/screen.png"
e()
{
	if [[ -z "$1" ]]; then
		featherpad &
	else
		if [[ -f "$1" ]]; then
			if [[ ! -z $(echo "$1" | grep -Fo "/") ]]; then
				dir=$(echo "$1" | rev | cut -d '/' -f2- | rev)
				echo "$dir"
				cd "${dir}"
			fi
			file=$(echo "$1" | rev | cut -d '/' -f1 | rev)

			featherpad "$file" &
		else
			if [[ -d "$1" ]]; then
				cd $1
				 #2> tmp
				#rm -f tmp
				if [[ $? == 0 ]]; then
					gitk --all --date-order &
				else
					o
				fi
			else
				#Inexistent route, new file
				#mkdir -p "$1"
				if [[ ! -z $(echo "$1" | grep -Fo "/") ]]; then
					dir=$(echo "$1" | rev | cut -d '/' -f2- | rev)
					mkdir -p "${dir}"
					cd "${dir}"
					file=$(echo "$1" | rev | cut -d '/' -f1 | rev)
					featherpad "${file}" &
				else
					featherpad "$1" &
				fi
			fi
		fi
	fi
}
alias f="find"
alias g="git"
gb()
{
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias h="history"
alias i="cat"
alias j="jobs -l"
alias k="gitk --all --date-order 	&"
alias l="ls -Ahl"
alias l.="ls -d .* --color=auto"
alias m="mcedit -a"
alias man="man %*"
alias n="nvim"
alias ñ="du -sh * | sort -h"
o()
{
	if [[ -z "$1" ]]; then
		nemo "$(pwd)" &
	else
		nemo "$1"
	fi
}
alias p="pypy3"
alias pt="ptpython"
alias q="exit"
alias r="rm -R"
alias s="psg"
alias t="tmux"
alias td="tmux detach"
alias u="du -h --max-depth"
alias v="nvim"
alias w="wireshark"
alias wh="which"
alias wd="date +%A"
alias wr="write"
alias wll="wall"
alias z="zsh"
alias at="tmux a -t"
alias au="cut -d: -f1 /etc/passwd | so"
alias ax="chmod a+x"
alias bc="bc -l"
alias bi="sudo apt --fix-broken install"
alias by="cmp"
alias cd..="cd .."
alias cg="cd `git rev-parse --show-toplevel`"
alias cp="cp -prb"
alias cr="cron"
alias crjobs="crontab -e"
alias ct="cut"
alias cplc="fc -ln -1 | awk '{\$1=\$1}1' | pbcopy"
alias df="pydf"
du ()
{
	ncdu
}
alias di="diff"
alias diff="colordiff"
alias clc="qalc"
alias ec="echo"
alias eg="egrep --color"
alias fg="fgrep --color"
alias fh="find . -name "
alias fw="iptlist"
alias matrix="cmatrix -sC yellow"
Cmatrix()
{
	matrix -C $1
}
alias music="sfxr"
alias nb="netbeans"
alias gd="git diff --ignore-all-space 
                    --ignore-space-at-eol 
                    --ignore-space-change 
                    --ignore-blank-lines -- . 
                    ':(exclude)*package-lock.json'"
alias gf="git fetch"
alias gr="grep -Rnwi -C 1 --color . -e $1"
alias grh="g reset --hard"
alias gro="groups"
cpp-run() 
{
    echo "Compiling file..."
    g++ -o "$1" "$1.cpp"
    echo "Compiled! Enter input :D"
    ./"$1"
}
c-run() 
{
    echo "Compiling file..."
    gcc -o "$1" "$1.c"
    echo "Compiled! Enter input :D"
    ./"$1"
}
alias addgro="groupadd"
alias delgro="groupdel"
alias agg="git add"
alias gaa="git add ."
alias gaaa="git add --all"
alias gh="history | grep $1"
gc()
{
    local ZONE="us-eastern1-c"
    local INSTANCE_NAME="myInstance"
    gcloud compute ssh --zone="$ZONE" "jupyter@$INSTANCE_NAME" -- -L 8080:localhost:8080
}
alias gco="git checkout"
alias gbr="git branch -vv"
alias gd="git diff"
alias gdc="git diff --cached"
alias gmv="git mv"
alias grm="git rm"
alias grc="git rm --cached"
alias gstash="git stash"
alias gcache="git config --global credential.helper 'cache --timeout=3600'"
alias status="git status"
gcm()
{
	git commit -m "$*";
}
alias gl="git log --graph --all $PRETTY"
alias gll="gl --stat"
alias gls="gl --pickaxe-all -G "
alias gt="git shortlog -s -n"
# Pretty log.
FORMAT="%C(yellow)%h%Creset %C(green)%G? %Cgreen(%cr) %Creset%C(yellow)%d%Creset %s Creset %C(dim)<%an>%Creset"
PRETTY="--pretty=format:'$FORMAT'"

gif2webm() 
{
    ffmpeg -i $1.gif -c vp9 -b:v 0 -crf 41 $1.webm
}
alias k9="kill -9"
alias killbyport="kill -9 \`lsof -i:3000 -t\`"
alias la="ll -A"
alias lc="ls .ltcr"
alias lk="ls -lSr"
alias ln="ln -i"
alias lr="ll -R"
alias lt="ls --human-readable --size -1 -S --classify"
alias lu="ls -ltur"
alias lx="ls -lXB"
alias lss="less -XF --RAW-CONTROL-CHARS --LINE-NUMBERS --LONG-PROMPT"
function man()
{
	LESS_TERMCAP_md=$'\e[01;31m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[01;44;33m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[01;32m' \
		command man "$@"
}
alias md="mkdir"
alias mr="make run"
global_make()
{
	if [[ -e 'GNUmakefile'  ||  -e 'makefile'  ||  -e 'Makefile' ]] ; then
		make -j "$@"
	elif  [[ $PWD == *'/home/mkarpoff/UVa'* ]]; then
		echo 'Making using UVa makefile'
		/usr/bin/make -f /home/mkarpoff/UVa/Support/Makefile "$*"
	else
		make --file=~/.global_makefile "$@"
	fi
}

LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

export LESS_TERMCAP_mb
export LESS_TERMCAP_md
export LESS_TERMCAP_me
export LESS_TERMCAP_se
export LESS_TERMCAP_so
export LESS_TERMCAP_ue
export LESS_TERMCAP_us

alias mv="mv -i"
alias np="notepad-plus-plus"
alias nr="net-restart"
alias ñs="ls -CF"
alias op="open"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias jcb="jupyter console --kernel bash"
alias jc="jupyter console"
alias qt="jupyter qtconsole"
alias rm="rm -i --preserve-root"
alias rs="rsync"
alias sd="sed"
alias se="sudo -E bash"
alias so="sort"
alias sv="su v"
ta()
{
  if [[ -z $1 ]]; then
    t attach
  else
    t attach -t "$1"
  fi
}
ts()
{
	t switch -t $1
}
alias tx="tilix &"
alias tk="t kill-ses"
alias tm="tmate"
alias tl="t ls"
alias tds="t a #"
alias tks="tmux kill-server"
tsk() 
{
  t kill-session -t $1
}
alias tls="t ls -F '#{session_attached} #{session_name}'"
trs()
{
	t rename-session $1
}
alias tconf="gedit ${HOME}/.tmux.conf"
alias tconfig="tconf"
alias trefresh="t refresh-client -S"
alias tupgrade="t source ${HOME}/.tmux.conf"
alias ttmplt="teamocil sample"
alias tedittmplt="gedit ${HOME}/.teamocil/sample.yml"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ua="useradd"
alias un="uniq"
alias us="users"
up()
{
	for ((i = 1; i <= $1; i++)); do
		cd ..
	done
}
alias udel="userdel"
alias ve="python3 -m venv ./venv"
alias va="source ./venv/bin/activate"
alias veva="ve; va"
alias youtubewav="youtube-dl --extract-audio --audio-format wav"
alias xo="xdg-open"
alias ..="cd .."
alias ...="cd ../../"
function att()
{
	tmux attach -t $1
}
alias app="find app"
alias cpu="lscpu"
alias cpv="rsync -ah --info=progress2"
alias ftc="ls | rev | cut -d'.' -f1 | rev | sort | uniq -c"
alias fsh="fish"
his()
{
	history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
}
alias ipe="curl ipinfo.io/ip"
alias ipi="hostname -I | awk '{print $1}'"
alias ipt="sudo /sbin/iptables"
alias iptlist="ipt FORWARD"
alias iptlistin="ipt INPUT"
alias iptlistout="iptlistout"
alias jsh="jshell"
alias lll="ls -l $directory$prefix"
alias loc="locate"
alias lsl="ls -lhFA | less"
ltf() 
{
    ls ${HOME}/$*
}
mkcd()
{
    mkdir -p $1
    cd $1
}
cdl()
{
	cd "$1" || return
	ls
}
alias mem="free -m -l -t"
alias mnt="mount | grep -E ^/dev | column -t"
alias nhp="nohup"
pdf()
{
	pdfgrep -in $1 *.pdf
}
alias pull="git pull"

alias sid="env | grep ORACLE_SID"
alias sha1="openssl sha1"
alias top="atop"
alias txt="gedit"
alias vis="vis '+set si'"
alias www="python -m SimpleHTTPServer 8000"
alias whrs="whereis"
alias whts="whatis"
alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"
alias xyz="cat $0"
alias zsh="zsh"
alias book="o ${HOME}/Escritorio/BOOKSCRATCH/UOCBookScratcher/books"
alias browser="lynx"
alias CALENDAR="cal"
alias CALCULATOR="bc"
alias calculator="gnome-calculator"
alias dnstop="dnstop -l 5  eth1"
alias vnstat="vnstat -i eth1"
alias iftop="iftop -i eth1"
alias free="free -mt"
alias tcpdump="tcpdump -i eth1"
alias ethtool="ethtool eth1"
alias grub="sudo nano /etc/default/grub"
alias grubup="sudo update-grub"
alias header="curl -I"
alias left="ls -t -1"
alias sl="sleep"
alias most="du -shx * | g -w "[0-9]*G""
alias mount="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias mkdir="mkdir -pv"
alias python="python3"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
alias pop="popd"
alias pw="pwd"
alias port="lsof -i $1"
alias ports="lsof -Pan -i tcp -i udp"
alias PORTS="netstat -tulanp"
alias perms="stat -f %Mp%Lp $1"
alias push="pushd"
alias root="sudo -i"
alias rsync="rsync -av --progress"
alias sample="teamocil sample"
alias systail="tail -f /var/log/system.log"
alias wget="wget -c"
alias whence="type -a"
wttr()
{
	curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-pasadena-ca}"
}
alias count="ind . -type f | wc -l"
alias curli="curl -I"
alias speed="speedtest-cli --server 17233 --simple"
alias serverspeed="speedtest-cli --list"
alias download="wget"
alias firewall="sudo ufw status verbose"
alias enableFirewall="sudo ufw enable"
alias disableFirewall="sudo ufw disable"
alias httpTest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -S"
alias httpReload="sudo /usr/sbin/apachectl -k graceful"
alias httpRestart="sudo /etc/init.d/httpd restart"
alias IDEA="cd ${HOME}/Escritorio/PythonFiles/ideaIE-2020.2.1/idea-IE-202.6948.83/bin; ./idea.sh"
alias DSKTP="cd ${HOME}/Escritorio"
alias DOC="cd ${HOME}/Documentos"
alias DWNLDS="cd ${HOME}/Descargas"
alias TMPLTS="cd ${HOME}/Plantillas"
alias DSKTPFLDR="cd /usr/share/applications"
alias LOCALDSKTPFLDR="cd ${HOME}/.local/share/applications"
alias IDEAPROJECTS="cd ${HOME}/IdeaProjects"
alias PYTHON="cd ${HOME}/IdeaProjects/PythonExample"
alias ASIX="cd ${HOME}/Escritorio/git/asix1Atesting"
alias GIT="cd ${HOME}/Escritorio/git"
alias HDD="cd ..; cd ..; cd /media/sf_Shared_Files; o; exit"
alias HM="cd ${HOME}"
alias OS="uname"
alias USAGE="du -h --max-depth"
alias THM="theme list"
alias TOTALUSAGE="df -hl --total | grep total"
alias TRASH="cd ${HOME}/.local/share/Trash/*"
alias PSMEM="ps auxf | sort -nr -k 4"
alias PSMEM10="ps auxf | sort -nr -k 4 | head -10"
alias PSCPU="ps auxf | sort -nr -k 3"
alias PSCPU10="ps auxf | sort -nr -k 3 | head -10"
alias MCDSTATS="/usr/bin/memcached-tool 10.10.27.11:11211 stats"
alias MCDSHOW="/usr/bin/memcached-tool 10.10.27.11:11211 display"
alias Shutdown="shutdown -r now"
alias Reboot="sudo reboot"
alias Install="sudo apt-get install || sudo apt install"
alias Update="sudo apt-get update && sudo apt-get upgrade -y"
alias Trash="rm -rf ${HOME}/.local/share/Trash/*"
alias editalias="gedit ${HOME}/.bash_aliases"
alias installvimplugins="vim +PluginInstall +qall"
alias editvimrc="sudo nano ${HOME}/.vimrc"
alias proxyon="networksetup -setwebproxystate Wi-Fi on; networksetup -setsecurewebproxystate Wi-Fi off;"
alias proxyoff="networksetup -setwebproxystate Wi-Fi off; networksetup -setsecurewebproxystate Wi-Fi off;"
alias localhost="ssh localhost"
alias sshconf="sshConfig"
alias sshConf="sshConfig"
alias sshStatus="sudo systemctl status sshd"
alias sshCheck="sudo service ssh status"
alias sshStart="sudo systemctl start sshd"
alias sshRestart="sudo systemctl restart sshd"
alias sshStop="sudo systemctl stop sshd"
alias sshEnable="sudo systemctl enable ssh"
alias sshDisable="sudo systemctl disable sshd"
alias sshConfig="nano ${HOME}/.ssh/config"
alias CTL="sudo systemctl"
alias UF="sudo systemctl list-unit-files"
alias MOUNT="sudo systemctl --type=mount"
alias TIMER="sudo systemctl -t timer"
alias SERVICE="sudo systemctl --type=service"
alias refreshpath="hash -r"
alias packetracer="packettracer"
alias gedit="featherpad"
alias edit="nedit"
alias newt="tmux new -s"
alias oldt="tmux new -s default"
=()
{
    local IFS=' '
    local calc="$*"
    # Uncomment the below for (p → +) and (x → *)
    #calc="${calc//p/+}"
    #calc="${calc//x/*}"
    printf '%s\n quit' "$calc" | gcalccmd | sed 's:^> ::g'
}
alias upgradealias="source ~/.bashrc"
hextobin()
{
	hextodec $1 | dectobin
}
utftobin()
{
	utftodec $1 | dectobin
}
hextoutf()
{
	hextodec $1 | dectoutf
}
bintoutf()
{
	bintodec $1 | dectoutf
}
bintohex()
{
	bintodec $1 | dectohex
}
utftohex()
{
	utftodec $1 | dectohex
}

