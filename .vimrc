call plug#begin()

Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()

:set termguicolors

:colorscheme nightfly
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
