"my own vimrc file
"
let $LANG='en'
set langmenu=en

set fileencoding=utf-8
set encoding=utf-8
set guioptions-=m
set guioptions-=T
set guifont=consolas:h12

set nobackup
set writebackup
set nu

autocmd GUIEnter * simalt ~x

" wrap long lines
set wrap

" colorscheme
colorscheme desert

" highlight search
set hls
set incsearch

" filetype
filetype plugin indent on

" syntax on
syntax on

" tagbar
nmap <F8> :TagbarToggle<CR>

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F6> :NERDTreeToggle<cr>

