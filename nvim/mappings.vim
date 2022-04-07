let mapleader = " "
let maplocalleader = "//"

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>( viw<esc>a(<esc>bi)<esc>lel

nnoremap <leader>em :vsplit $NVIM_HOME/mappings.vim<cr>
nnoremap <leader>sm :source $NVIM_HOME/mappings.vim<cr>

nnoremap <leader>epc :vsplit $NVIM_HOME/plugins_config.vim<cr>                                                                                                
nnoremap <leader>spc :source $NVIM_HOME/plugins_config.vim<cr>

nnoremap <leader>es :vsplit $NVIM_HOME/settings.vim<cr>                                                                                                
nnoremap <leader>ss :source $NVIM_HOME/settings.vim<cr>
