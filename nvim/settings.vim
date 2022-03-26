" set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set mouse=a

lua vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
lua vim.g.mapleader=" "
lua vim.g.maplocalleader=" "
set timeoutlen=0


syntax enable
set encoding=utf-8
set title

set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set cursorline
"set cursorcolumn


" Colorscheme
lua require("catppuccin").setup({transparent_background = true})
set termguicolors
set background=dark
colorscheme catppuccin
