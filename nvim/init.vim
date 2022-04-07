let $NVIM_HOME=stdpath("config")


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


source $NVIM_HOME/mappings.vim

call plug#begin()
source $NVIM_HOME/plugins.vim
call plug#end()

source $NVIM_HOME/settings.vim

source $NVIM_HOME/plugins_config.vim

source $NVIM_HOME/autocmds.vim


echo "(>^.^<)"
