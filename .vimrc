call plug#begin()
	Plug 'itchyny/lightline.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" set termguicolors
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
set laststatus=2

" Enable syntax highlight according to language
syntax enable

" Dracula theme for code
"let g:dracula_italic = 0 " Disable italics 
let &t_ZH="\e[3m" " For italics syntax
let &t_ZR="\e[23m" " For italics syntax
colorscheme dracula

" Transparent backgroud
hi Normal guibg=NONE ctermbg=NONE 

" Display line numbers
set number

" Allow to use mouse scroll´
set mouse=a

