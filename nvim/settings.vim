set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set mouse=a
set timeoutlen=0
syntax enable
set encoding=utf-8
set title
set nowrap
set nobackup
set hlsearch
set noshowcmd
set noshowmode
set noruler
set cmdheight=1
set laststatus=2
set scrolloff=10
set splitright

" Colorscheme
lua require("catppuccin").setup({transparent_background = true})
set termguicolors
set background=dark
colorscheme catppuccin

" Statusline
set statusline=%f
set statusline+=\ -\ 
set statusline+=%y
set statusline+=%=
set statusline+=%04l
set statusline+=/
set statusline+=%04L

" Merlin for OCaml
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
