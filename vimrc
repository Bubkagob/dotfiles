" ################## Linux Prelude ###########################################
"
" mkdir -p ~/.local/share/fonts
" cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
"
" ################## MAC Prelude #############################################
"
" cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf



" #############################################################################
" 			Plugins
" #############################################################################
filetype off		" required
set rtp+=~/.vim/bundle/Vundle.vim " set Vundle runtime path
call vundle#begin()

Plugin 'gmarik/Vundle.vim'	" let Vundle manage Vundle, required
Plugin 'junegunn/seoul256.vim' " Seoul theme
Plugin 'sjl/gundo.vim'      " Undo-tree
Plugin 'ctrlpvim/ctrlp.vim' " File search
Plugin 'scrooloose/nerdtree' " file navigation
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " highlight syntax
Plugin 'ryanoasis/vim-devicons' " Nerd-tree icons
Plugin 'vim-airline/vim-airline' " Nice bottom status line
Plugin 'vim-airline/vim-airline-themes' " Themes for Vim - airline
Plugin 'scrooloose/syntastic'   " Syntax plugin
Plugin 'tpope/vim-fugitive'     " Git plugin
Plugin 'chase/vim-ansible-yaml' " YAML plugin

call vundle#end()
filetype plugin indent on	" required

" #############################################################################
" 		Colorschneme config
" #############################################################################
let g:seoul256_background = 236
colorschem seoul256

" #############################################################################
"	General
" #############################################################################
set fileformat=unix
set fileformats=unix,dos
set nocompatible	    " do not use VI-compatibilty
syntax enable			" syntax highlight

set tabstop=4           " counts for When open file
set softtabstop=4       " Then you press <Tab> and <BackSpace>
set expandtab           " Tabs --> Spaces converter
set shiftwidth=4        " Shift
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete
set lazyredraw          " redraw only when we need it
set showmatch           " highlight matching [{()}]

set ai                  " auto-indentation
set cin                 " c-style indentation

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore Case
nnoremap <leader><space> :nohlsearch<CR>    " Turn off by pressing \ + SPACE

set foldenable          " enable folding
set foldmethod=syntax   " fold based on indentat
set foldlevelstart=1    " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/close folds
nnoremap gV `[v`]       " highlight last inserter text

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v]\ [LEN=%L]
set laststatus=2

set nobackup            " Disable backups
set nowritebackup       "
set noswapfile          " Disable swap-files
set colorcolumn=80
" #############################################################################
"       Plugin Configuration
" #############################################################################
" Gundo setiings
nnoremap <leader>u :GundoToggle<CR> " Gundo Toggle

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" NerdTree settings
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

" SYNTASTIC
set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_python_pylint_args="-d C0103,C0111,R0201"
