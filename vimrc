set nocompatible
filetype off

source ~/.vim/bundle.vim

if filereadable($HOME . "/.vim/.plugins_installed")
  for f in split(glob('~/.vim/src/*.vim'), '\n')
    exe 'source' f
  endfor

  source $HOME/.vim/settings.vim
  source $HOME/.vim/after.vim
endif
