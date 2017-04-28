
.PHONY: vim tmux

install: tmux vim
	@echo ".dotfiles installed"


tmux:
	cp tmux.conf ~/.tmux.conf

vim:
	mkdir -p ~/.vim
	cp -r vim/* ~/.vim/.
	cp vimrc ~/.vimrc


