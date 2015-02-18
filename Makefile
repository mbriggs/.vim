install: directories links install_vundle vundle install_complete

directories:
	mkdir -p backup
	mkdir -p bundle

links:
	ln -sf $(HOME)/.vim/vimrc $(HOME)/.vimrc

install_complete:
	touch .plugins_installed

install_vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vundle:
	vim +PluginInstall +qall
