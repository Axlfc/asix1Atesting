alias printest="echo 'test'"
alias a="echo '---------------Alias----------------';alias"
alias b="bash"
alias c="clear"
alias d="pwd"
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
alias g="grep -Rnwi -C 1 --color . -e $1"
alias h="history"
alias i="cat"
alias j="jobs -l"
alias k="gitk --all --date-order 	&"
alias l="ls -Ahl"
alias l.="ls -d .* --color=auto"
alias m="mcedit -a"
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
alias p="python3"
alias q="exit"
alias r="rm -R"
alias s="psg"
alias t="tmux"
alias u="du -h --max-depth"
alias v="nvim"
alias wh="which"
alias x="exit"
alias y="date +”%Y”"
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
alias crjobs="crontab –e"
alias ct="cut"
alias df="pydf"
du ()
{
	ncdu
}
alias di="diff"
alias ec="echo"
alias eg="egrep --color"
alias fg="fgrep --color"
alias fh="find . -name "
alias fw="iptlist"
alias matrix="cmatrix"
alias music="sfxr"
alias gr="g reset --hard"
alias gro="groups"
alias addgro="groupadd"
alias delgro="groupdel"
alias agg="git add"
alias gaa="git add ."
alias gaaa="git add --all"
alias gh="history | grep $1"
alias status="git status"
alias k9="kill -9"
alias la="ll -A"
alias lc="ls .ltcr"
alias lk="ls -lSr"
alias ln="ln -i"
alias lr="ll -R"
alias lt="ls --human-readable --size -1 -S --classify"
alias lu="ls -ltur"
alias lx="ls -lXB"
alias lss="less"
alias ñs="ls -CF"
alias mv="mv -i"
alias op="open"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias rm="rm -i --preserve-root"
alias rs="rsync"
alias sd="sed"
alias so="sort"
alias su="sudo -i"
alias sv="su v"
ta()
{
  if [[ -z $1 ]]; then
    t attach
  else
    t attach -t "$1"
  fi
}
alias tx="tilix &"
alias tk="t kill-ses"
alias tl="t ls"
alias tds="t a #"
alias tks="tmux kill-server"
tsk() 
{
  tmux kill-session -t $1
}
alias tls="t ls"
alias ua="useradd"
alias un="uniq"
alias us="users"
alias udel="userdel"
alias ve="python3 -m venv ./venv"
alias va="source ./venv/bin/activate"
alias veva="ve; va"
alias wd="date +%A"
alias wr="write"
alias wll="wall"
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
mcd()
{
    mkdir -p $1
    cd $1
}
alias mem="free -m -l -t"
alias mnt="mount | grep -E ^/dev | column -t"
alias nhp="nohup"
alias sid="env | grep ORACLE_SID"
alias sha1="openssl sha1"
alias top="atop"
alias txt="gedit"
alias vim="nvim"
alias vis="vis '+set si'"
alias www="python -m SimpleHTTPServer 8000"
alias whis="whereis"
alias whtis="whatis"
alias xyz="cat $0"
alias zsh="zsh"
alias book="o ${HOME}/Escritorio/BOOKSCRATCH/UOCBookScratcher/books"
alias browser="lynx"
alias CALENDAR="cal"
alias CALCULATOR="bc"
alias date="date +”%d-%b-%Y”"
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
alias most="du -shx * | g -w "[0-9]*G""
alias mount="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias mkdir="mkdir -pv"
alias python="python3"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
alias pop="popd"
alias ports="netstat -tulanp"
alias push="pushd"
alias root="sudo -i"
alias wget="wget -c"
alias which="type -a"
alias count="ind . -type f | wc -l"
alias curli="curl -I"
alias speed="speedtest-cli --server 17233 --simple"
alias serverspeed="speedtest-cli --list"
alias download="wget"
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
alias PSMEM="ps auxf | sort -nr -k 4"
alias PSMEM10="ps auxf | sort -nr -k 4 | head -10"
alias PSCPU="ps auxf | sort -nr -k 3"
alias PSCPU10="ps auxf | sort -nr -k 3 | head -10"
alias MCDSTATS="/usr/bin/memcached-tool 10.10.27.11:11211 stats"
alias MCDSHOW="/usr/bin/memcached-tool 10.10.27.11:11211 display"
alias Shutdown="shutdown –r now"
alias Reboot="sudo reboot"
alias Install="sudo apt-get install || sudo apt install"
alias Update="sudo apt-get update && sudo apt-get upgrade -y"
alias Shutdown="shutdown now"
alias Trash="rm -rf ~/.local/share/Trash/*"
alias editalias="gedit ${HOME}/.bash_aliases && upgradealias"
alias sshStatus="sudo systemctl status sshd"
alias sshStart="sudo systemctl start sshd"
alias sshRestart="sudo systemctl restart sshd"
alias sshStop="sudo systemctl stop sshd"
alias sshEnable="sudo systemctl enable ssh"
alias sshDisable="sudo systemctl disable sshd"
alias sshConfig="nano ${HOME}/.ssh/config"
alias refreshpath="hash -r"
alias gedit="featherpad"
alias edit="nedit"
alias newt="tmux new -s"
alias oldt="tmux new -s default"

