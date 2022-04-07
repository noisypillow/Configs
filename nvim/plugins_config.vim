" Telescope
lua require('telescope').load_extension('media_files')
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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
let g:dashboard_custom_header =[
    \'',
    \' ⣿⣿⣷⡁⢆⠈⠕⢕⢂⢕⢂⢕⢂⢔⢂⢕⢄⠂⣂⠂⠆⢂⢕⢂⢕⢂⢕⢂⢕⢂ ',
    \' ⣿⣿⣿⡷⠊⡢⡹⣦⡑⢂⢕⢂⢕⢂⢕⢂⠕⠔⠌⠝⠛⠶⠶⢶⣦⣄⢂⢕⢂⢕ ',
    \' ⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂ ',
    \' ⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂ ',
    \' ⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔ ',
    \' ⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿ ',
    \' ⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿ ',
    \' ⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃ ',
    \' ⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈ ',
    \' ⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈ ',
    \' ⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈ ',
    \' ⠄⠁⠕⢝⡢⠈⠻⣿⣿⣿⣿⣿⣿⣿⣷⣕⣑⣑⣑⣵⣿⣿⣿⡿⢋⢔⢕⣿⠠⠈ ',
    \' ⠨⡂⡀⢑⢕⡅⠂⠄⠉⠛⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⢔⢕⢕⣿⣿⠠⠈ ',
    \' ⠄⠪⣂⠁⢕⠆⠄⠂⠄⠁⡀⠂⡀⠄⢈⠉⢍⢛⢛⢛⢋⢔⢕⢕⢕⣽⣿⣿⠠⠈ ',
    \'',
    \]

let g:dashboard_default_executive ='telescope'

lua << EOF
vim.g.dashboard_custom_section = {
    a = { description = { "洛 New File                  SPC d n" }, command = "DashboardNewFile" },
	b = { description = { "  Recents                   SPC f o" }, command = "Telescope oldfiles" },
    c = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
    d = { description = { "  Colorscheme             SPC f c" }, command = "Telescope colorscheme" },
}
EOF


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
nnoremap <C-Space> :lua require('FTerm').toggle()<CR>
inoremap <C-Space> :lua require('FTerm').toggle()<CR>
tnoremap <C-Space> :lua require('Fterm').toggle()<CR>
command DuneBuild :lua require('FTerm').scratch({ cmd = 'dune', 'build' }) " custom command for dune
command Utop :lua require('FTerm').scratch({ cmd = {'utop', '-init', vim.fn.expand('%:t')} })

" Which key
lua require('which-key').setup{}

" Autopairs
lua require('nvim-autopairs').setup{}

" LSP config
lua require('lspconfig').ocamllsp.setup{on_attach=require('virtualtypes').on_attach}
lua require('lspconfig').pyright.setup{}

" Nabla
nnoremap <leader>m :lua require("nabla").popup({border = 'rounded'})<CR>


" LimeLight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'

" Goto preview
lua require('goto-preview').setup{default_mappings = true}

" Gitsigns
lua require('gitsigns').setup{}
