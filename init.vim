:set number
:set relativenumber
:set autoindent
:set mouse=a

call plug#begin()

Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

let g:dashboard_default_executive ='telescope'
