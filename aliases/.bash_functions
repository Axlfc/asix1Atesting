att()
{
	tmux attach -t $1
}
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

cdl()
{
	cd "$1" || return
	ls
}

cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

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

calculate()
{
	echo $[$1]
}

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

du ()
{
	ncdu
}

gb()
{
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

gc()
{
    local ZONE="us-eastern1-c"
    local INSTANCE_NAME="myInstance"
    gcloud compute ssh --zone="$ZONE" "jupyter@$INSTANCE_NAME" -- -L 8080:localhost:8080
}

gcm()
{
	git commit -m "$*";
}

gif2webm() 
{
    ffmpeg -i $1.gif -c vp9 -b:v 0 -crf 41 $1.webm
}

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

Cmatrix()
{
	matrix -C $1
}

o()
{
	if [[ -z "$1" ]]; then
		nemo "$(pwd)" &
	else
		nemo "$1"
	fi
}

session()
{	if [[ -z "$1.yaml" ]]; then
		tmuxp load $HOME/Escritorio/sessions/ses/$1.yaml
	else
		tmuxp load $HOME/Escritorio/sessions/ses/mysession.yaml
	fi
}

freezesession()
{

	tmuxp freeze $1
}
tses()
{
	tmuxp load $HOME/Escritorio/sessions/ses/$1.json
}

tsesconvert()
{
	tmuxp convert -y $1
}

pdf()
{
	pdfgrep -in $1 *.pdf
}

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

tsk() 
{
  t kill-session -t $1
}

trs()
{
	t rename-session $1
}

up()
{
	for ((i = 1; i <= $1; i++)); do
		cd ..
	done
}

wttr()
{
	curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-pasadena-ca}"
}

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

noglob_helper() {
    "$@"
    case "$shopts" in
        *noglob*) ;;
        *) set +f ;;
    esac
    unset shopts
}

echo-literally-helper() {
    str="`history 1 | perl -pe 's/^ *[0-9]+ +[^ ]+ //'`"
    echo "$str"
}

his()
{
	history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
}

ltf() 
{
    ls ${HOME}/$*
}
mkcd()
{
    mkdir -p $1
    cd $1
}

=()
{
    local IFS=' '
    local calc="$*"
    # Uncomment the below for (p → +) and (x → *)
    #calc="${calc//p/+}"
    #calc="${calc//x/*}"
    printf '%s\n quit' "$calc" | gcalccmd | sed 's:^> ::g'
}