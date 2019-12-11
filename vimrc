" ###############################################
" 		General				
" ###############################################
set fileformat=unix
set fileformats=unix,dos
set nocompatible
set nobackup
set noswapfile
set nowritebackup
set number
filetype on
syntax enable
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline
set wildmenu
set showmatch
set ai
set cin
set incsearch
set ignorecase
set colorcolumn=80
set encoding=utf-8
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}\ [POS=%04l,%04v]\ [LEN=%L]
set laststatus=2
set pastetoggle=<F2>
colo seoul256

" #######################################
"
"   NerdTree
"
" #######################################
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
