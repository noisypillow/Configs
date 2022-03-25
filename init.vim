set number
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

set termguicolors
set background=dark

syntax enable
set encoding=utf-8
set title

set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set cursorline
"set cursorcolumn



call plug#begin()

Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/neovim/nvim-lspconfig'
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
Plug 'https://github.com/windwp/nvim-autopairs'

"Colorschemes

Plug 'https://github.com/bluz71/vim-moonfly-colors'
Plug 'https://github.com/catppuccin/nvim', {'as': 'catppuccin'}
Plug 'https://github.com/andreypopp/vim-colors-plain'

call plug#end()


lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup({transparent_background = true})
EOF

colorscheme catppuccin " set colorscheme


" Treesitter
lua << EOF
require("nvim-treesitter.configs").setup {
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
    },
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
lua require('colorizer').setup{}

" Neoscroll
lua << EOF
require('neoscroll').setup({
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = "sin",       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})
EOF

" Renamer
lua require('renamer').setup{}
nnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>

" Glow
let g:glow_border = "rounded"
let g:glow_style = "dark"
noremap <leader>p :Glow<CR>

" FTerm
lua << EOF
require'FTerm'.setup({
    border = 'rounded',
    blend = 0,
    dimensions  = {
        height = 0.5,
        width = 0.5,
    },
})
EOF
nnoremap <leader>tt :lua require('FTerm').toggle()<CR>

" Which key
lua require('which-key').setup{}

" Autopairs
lua require('nvim-autopairs').setup{}

" LSP config
lua require'lspconfig'.ocamllsp.setup{}
lua require'lspconfig'.pyright.setup{}
lua vim.lsp.set_log_level("debug")






