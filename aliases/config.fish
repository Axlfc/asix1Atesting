# fish directory folder = /.config/fish/config.fish
if [[ -f ~/.config/fish/config.fish ]]; then
	. ~/.config/fish/config.fish
fi
fish_theme agnoster
zoxide init fish | source

