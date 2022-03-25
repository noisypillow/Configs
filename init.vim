:set number
:set relativenumber
:set autoindent
:set mouse=a



call plug#begin()

Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/ellisonleao/glow.nvim'
Plug 'https://github.com/numToStr/FTerm.nvim'
Plug 'https://github.com/jbyuki/venn.nvim'
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'https://github.com/stevearc/dressing.nvim'
Plug 'https://github.com/karb94/neoscroll.nvim'
Plug 'https://github.com/monaqa/dial.nvim'
Plug 'https://github.com/filipdutescu/renamer.nvim', { 'branch': 'master' }
Plug 'https://github.com/folke/which-key.nvim'
Plug 'https://github.com/ggandor/lightspeed.nvim'
Plug 'https://github.com/p00f/nvim-ts-rainbow'

"Colorschemes

Plug 'https://github.com/bluz71/vim-moonfly-colors'
Plug 'https://github.com/catppuccin/nvim', {'as': 'catppuccin'}
Plug 'https://github.com/andreypopp/vim-colors-plain'

call plug#end()


:set termguicolors
":set background=dark

lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup({transparent_background = true})
EOF

colorscheme plain " set colorscheme



let mapleader=" " " set leader key
:set timeoutlen=0


" Treesitter
lua << EOF
require("nvim-treesitter.configs").setup {
	rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  }
}
EOF


" Dashboard
let g:dashboard_default_executive ='telescope'

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
nnoremap <leader>tt :lua require('FTerm').toggle()<CR>

" Nabla
nnoremap <leader>la :lua require('nabla').popup()<CR>

" Which key
lua require('which-key').setup()








