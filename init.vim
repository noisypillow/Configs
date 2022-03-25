:set number
:set relativenumber
:set autoindent
:set mouse=a

:set termguicolors
:set background=dark

call plug#begin()

Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/ellisonleao/glow.nvim'
Plug 'https://github.com/numToStr/FTerm.nvim'
Plug 'https://github.com/jbyuki/nabla.nvim'
Plug 'https://github.com/jbyuki/venn.nvim'
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'https://github.com/stevearc/dressing.nvim'
Plug 'https://github.com/karb94/neoscroll.nvim'
Plug 'https://github.com/monaqa/dial.nvim'
Plug 'https://github.com/filipdutescu/renamer.nvim', { 'branch': 'master' }
Plug 'https://github.com/bluz71/vim-moonfly-colors'

call plug#end()

nnoremap <SPACE> <Nop>
let mapleader=" "

let g:dashboard_default_executive ='telescope'

set background=dark
set termguicolors
colorscheme moonfly

" Colorizer
lua require('colorizer').setup()

" Neoscroll
lua require('neoscroll').setup()


" Renamer
lua require('renamer').setup()
nnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>

" Glow
let g:glow_border = "rounded"
let g:glow_style = "dark"
noremap <leader>p :Glow<CR>

" FTerm
nnoremap <leader>t :lua require('FTerm').toggle()<CR>


nnoremap <leader>l :lua require('nabla').popup()<CR>










