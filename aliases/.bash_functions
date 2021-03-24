

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


commit()
{
    git commit -am "$1"
}


dt()
{
	CONTADOR=0

	while [ "$*" ]
	do
		if [[ $1 == "default" ]]; then
		  shift
		else
		  let CONTADOR=$CONTADOR+1
		  tmux new-session -d -s $1
	shift
	fi	
	done
}


e()
{
	if [[ -z "$1" ]]; then
		pluma &
	else
		if [[ -f "$1" ]]; then
			if [[ ! -z $(echo "$1" | grep -Fo "/") ]]; then
				dir=$(echo "$1" | rev | cut -d '/' -f2- | rev)
				echo "$dir"
				cd "${dir}"
			fi
			file=$(echo "$1" | rev | cut -d '/' -f1 | rev)

			pluma "$file" &
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
					pluma "${file}" &
				else
					pluma "$1" &
				fi
			fi
		fi
	fi
}


freezesession()
{

	tmuxp freeze $1
}


ltf() 
{
    ls ${HOME}/$*
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


ta()
{
  if [[ -z $1 ]]; then
    t attach
  else
    t attach -t "$1"
  fi
}


td()
{
  tmux detach $1
}


trs()
{
	t rename-session $1
}


ts()
{
	t switch -t $1
}


tsend()
{
    t send -t "$1" "$2" Enter
}


tses()
{
	tmuxp load $HOME/Escritorio/sessions/ses/$1.json
}


tsesconvert()
{
	tmuxp convert -y $1
}


tsk() 
{
CONTADOR=0

while [ "$*" ]
do
	if [[ $1 == "default" ]]; then
	  shift
	else
	  let CONTADOR=$CONTADOR+1
	  t kill-session -t $1 
    shift
  fi
    
done
}



mkcd()
{
    mkdir -p $1
    cd $1
}
