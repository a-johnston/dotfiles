sync:
	cp ~/.gitignore .
	cp ~/.gitconfig .
	cp ~/.tmux.conf .
	cp ~/.vimrc .
	cp ~/xterm-256color-italic.terminfo .
	cp ~/.config/fish/config.fish .
	cp ~/.config/fish/functions/* fish_functions/

install:
	cp .gitignore ~
	cp .gitconfig ~
	cp .tmux.conf ~
	cp .vimrc ~
	cp xterm-256color-italic.terminfo ~
	cp config.fish ~/.config/fish
	cp fish_functions/* ~/.config/fish/functions
	cp gruvbox.vim ~/.vim/colors
