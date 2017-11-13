set tabstop=4
set softtabstop=4
set shiftwidth=4
set et
set wrap
set ai
set cin
" ==========
" C++
" ==========
set exrc
set secure

set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp-866
syntax on

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v]\ [LEN=%L]
set laststatus=2

set wildmenu "drop down menu
set pastetoggle=  "intendention

"No backups & swaps
set nobackup
set nowritebackup
set noswapfile

"Highlight when COLS > 80
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END



""""""""""""""""""""""""""COLOR
colorscheme seoul256

""""""""""""""""""""""""""FONT

"""""""""""""""""""""""""""Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Bundle 'noah/vim256-color'
Plugin 'gmarik/Vundle.vim'

"Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"Colorshemes & Icons
Plugin 'junegunn/seoul256.vim'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'vim-airline/vim-airline-themes'
"Other
Plugin 'valloric/youcompleteme'
Plugin 'bling/vim-airline'
Plugin 'fisadev/FixedTaskList.vim'
Plugin 'rosenfeld/conque-term'
Plugin 'tpope/vim-surround'

"Python
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'mitsuhiko/vim-python-combined'

"Cmake
Plugin 'pboettch/vim-cmake-syntax'

"Go
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

"VIM-airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#formatter='unique_tail'

"TaskList
map <F2> :TaskList<CR>

" =====================
"     Python-mode
" =====================
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

"lint
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore = "E501,W601,C0110"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
"Breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"Syntax highlight
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"Other
let g:pymode_folding = 0
let g:pymode_run = 0
let g:pymode_python = 'python3'
" =============
" JEDI
" =============
let g:jedi#popup_select_first = 0
"autocmd FileType python set completeopt-=preview

" =============
" ALL
" =============
inoremap <C-space> <C-x><C-o>

"Python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
            \ formatoptions+=croq softtabstop=4 smartindent
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd Filetype pyrex setlocal expandtab shiftwidth=4 tabstop=8
            \ softtabstop=4 smartindent
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
