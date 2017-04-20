
install: tmux vim
	@echo ".dotfiles installed"


tmux:
	cp tmux.conf ~/.tmux.conf

vim:
	cp vimrc ~/.vimrc

