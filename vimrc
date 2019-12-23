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
filetype plugin on
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline
set wildmenu
set showmatch
set ai
set vb " Visual bell
set cin
set incsearch
set ignorecase
set colorcolumn=80
set encoding=utf-8
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}\ [POS=%04l,%04v]\ [LEN=%L]
set laststatus=2
set pastetoggle=<F2>
set clipboard=unnamedplus
colo seoul256


" #######################################
"   YAML
" #######################################
"Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" #######################################
"   PERL
" #######################################

set foldmethod=syntax |
set foldlevelstart=1 |
let perl_fold=1 |
let sh_fold_enabled=1 |
let perl_extended_vars=1 |
let perl_sync_dist=250


" #######################################
"   NerdTree
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
