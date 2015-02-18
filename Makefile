install: directories links install_vundle vundle install_complete

directories:
	mkdir -p backup
	mkdir -p bundle

links:
	ln -sf $(HOME)/.vim/vimrc $(HOME)/.vimrc

install_complete:
	touch .plugins_installed
	echo "add source \"\$HOME/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh\" to your bashrc"

install_vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vundle:
	vim +PluginInstall +qall
