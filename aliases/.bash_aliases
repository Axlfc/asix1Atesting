alias printest="echo 'test'"
alias a="echo '---------------Alias----------------';alias"
alias b="bash"
alias c="clear"
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
				o
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
alias f="find $"
alias g="grep"
alias h="history"
alias k="gitk --all --date-order 	&"
alias m="cmatrix"
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
alias t="tmux"
alias v="nvim"
alias w="which"
alias x="exit"
alias y="date +”%Y”"
alias z="zsh"
alias at="tmux a -t"
alias ax="chmod a+x"
alias bi="sudo apt --fix-broken install"
alias df="df -H"
alias du="du -ch"
alias gr="g reset --hard"
alias gh="history | grep $1"
alias lt="ls --human-readable --size -1 -S --classify"
alias ñs="ls"
alias su="sudo -i"
alias tx="tilix &"
alias wd="date +%A"
alias ve="python3 -m venv ./venv"
alias va="source ./venv/bin/activate"
alias veva="ve; va"
alias ..="cd .."
alias ...="cd ../../"
alias att="tmux attach -t n"
alias attt="tmux attach -t $"
alias app="find app"
alias cpv="rsync -ah --info=progress2"
alias ftc="ls | rev | cut -d'.' -f1 | rev | sort | uniq -c"
alias fsh="fish"
alias ipe="curl ipinfo.io/ip"
alias ipi="hostname -I"
alias mnt="mount | grep -E ^/dev | column -t"
alias top="atop"
alias txt="gedit"
alias vim="nvim"
alias www="python -m SimpleHTTPServer 8000"
alias zsh="zsh"
alias book="o ${HOME}/Escritorio/BOOKSCRATCH/UOCBookScratcher/books"
alias date="date +”%d-%b-%Y”"
alias grub="sudo nano /etc/default/grub"
alias grubup="sudo update-grub"
alias ping="ping -c 5"
alias fastping="pinc -c 100 -s.2"
alias ports="netstat -tulanp"
alias root="sudo -i"
alias wget="wget -c"
alias status="git status"
alias left="ls -t -1"
alias speed="speedtest-cli --server 17233 --simple"
alias speedserverlist="speedtest-cli --list"
alias gcommit="git add -A; git commit -am "
alias Reboot="sudo reboot"
alias Install="sudo apt-get install || sudo apt install"
alias Update="sudo apt-get update && sudo apt-get upgrade -y"
alias IDEA="cd ${HOME}/Escritorio/PythonFiles/ideaIE-2020.2.1/idea-IE-202.6948.83/bin; ./idea.sh"
alias DSKTP="cd ${HOME}/Escritorio"
alias DOC="cd ${HOME}/Documentos"
alias DWNLDS="cd ${HOME}/Descargas"
alias TMPLTS="cd ${HOME}/Plantillas"
alias DSKTPFLDR="cd /usr/share/applications"
alias LOCALDSKTPFLDR="cd ${HOME}/.local/share/applications"
alias GIT="cd ${HOME}/Escritorio/git"
alias HDD="cd ..; cd ..; cd /media/sf_Shared_Files; o; exit"
alias HOME="cd ${HOME}"
alias editalias="subl ~/.bash_aliases && upgradealias"
alias gedit="featherpad"
alias newt="tmux new -s"
alias oldt="tmux new -s default"
