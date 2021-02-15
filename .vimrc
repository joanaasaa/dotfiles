call plug#begin()

call plug#end()

" set termguicolors
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

packadd! dracula
syntax enable
colorscheme dracula

" Transparent backgroud
hi Normal guibg=NONE ctermbg=NONE 

" Display line numbers
set number
