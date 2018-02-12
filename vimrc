" ################## Linux Prelude ###########################################
"
" mkdir -p ~/.local/share/fonts
" cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
"
" ################## MAC Prelude #############################################
"
" cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf



" ##################################################################
" 			Plugins
" ##################################################################
filetype off		" required
set rtp+=~/.vim/bundle/Vundle.vim " set Vundle runtime path
call vundle#begin()


Plugin 'Vundle/Vundle.vim'	" let Vundle manage Vundle, required
Plugin 'Zenburn'            " Theme
Plugin 'sjl/gundo.vim'      " Undo-tree
Plugin 'ctrlpvim/ctrlp.vim' " File search
Plugin 'scrooloose/nerdtree' " file navigation
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " highlight syntax
Plugin 'ryanoasis/vim-devicons' " Nerd-tree icons
Plugin 'vim-airline/vim-airline' " Nice bottom status line
Plugin 'vim-airline/vim-airline-themes' " Themes for Vim - airline



call vundle#end()
filetype plugin indent on	" required



" ##################################################################
" 		Colorschneme config
" ##################################################################
colorschem zenburn

" ##################################################################
"	General
" ##################################################################
set nocompatible	    " do not use VI-compatibilty
syntax enable			" syntax highlight

set tabstop=4           " counts for When open file
set softtabstop=4       " Then you press <Tab> and <BackSpace>
set expandtab           " Tabs --> Spaces converter

set number              " show line numbers
set showcmd             " show comman in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete
set lazyredraw          " redraw only when we need it
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>    " Turn off by pressing \ + SPACE

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indentation
nnoremap <space> za     " space open/close folds
nnoremap gV `[v`]       " highlight last inserter text

" #####################################################################
"       Plugin Configuration
" #####################################################################

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
let g:airliner_powerline_fonts=1
let g:airliner#extensions#tebline#formatter='unique_tail_improved'

