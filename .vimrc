"
" 
" Karthi - vimrc file (Taken from various sources)
" 

" load plugins from vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" plugins
Plugin 'gmarik/vundle'			" let vundle manage vundle
Plugin 'kien/ctrlp.vim'         " fuzzy find files
Plugin 'scrooloose/nerdtree'    " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-fugitive'     " the ultimate git helper
Plugin 'tpope/vim-commentary'   " comment/uncomment lines with gcc or gc in visual mode
Plugin 'bling/vim-airline'      " airline
Plugin 'tpope/vim-sorround'     " easy srround
Plugin 'chriskempson/base16-vim'	" colorscheme

call vundle#end()

" Enable file type plugins
filetype off
filetype plugin on
filetype indent on

set shell=/bin/bash				" set bash
set nocompatible				" not compatible with vi
set autoread					" detect when a file is changed
set backspace=indent,eol,start	" make backspace behave in a sane manner

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ","

" :W sudo saves the file
command W w !sudo tee % > /dev/null
" Fast saving
nmap <leader>w :w!<cr>

" Tab control
set noexpandtab     " tabs ftw
set smarttab        " tab respects 'tabstop', 'shiftwidth' and 'softtabstop'
set tabstop=4       " visible width of tab
set softtabstop=4   " edit as if the tabs are 4 spaces
set shiftwidth=4    " number of spaces used for indent and unindent
set shiftround      " round indent to a multiple of shiftwidth
set colorcolumn=80	" heighlight 80 coloumn
set cul				" set current line
set wildmenu		" turn wild menu	
set tags=./tags		" search for tags in above heirarchy
set ttyfast			" faster redrawing
set clipboard=unnamed


" code folding settings
set foldmethod=syntax   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " don't fold by default
set foldlevel=1			" fold level

" space open/close folds
nnoremap <space> za

" movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
" highlight last inserted text
nnoremap gV `[v`]

" enable relative number
set rnu

" Toggle number display
function! NumberToggle()
    if (&relativenumber == 1)
        set number
    else
        set rnu
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching
set ignorecase      " case insensitive  searching
set smartcase       " case sensitive if expression contains capital letters
set hlsearch        " highlight search
set incsearch       " set incremental search
set nolazyredraw    " don't redraw while executing macros
set nowrap          " nowrap
set magic           " set magic on, for regex
set showmatch       " show matching braces
set mat=2           " how many tenths of a second to blink
set textwidth=78	" maximum line width when writing comments

" no annoying sounds on error
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set foldcolumn=1	" add a bit extra margin to the left

" Switch syntax highlighting on
syntax on

" History
set history=1000


set encoding=utf8
set background=dark
colorscheme desert	" default color scheme
set ruler			" always show current position
set autoindent      " automatically set indent of new line
set smartindent		" enable smart indent
set laststatus=2    " show the status line always
set tabstop=4		" expand to four spaces
set cmdheight=2		" height of the command window
set showcmd			" show command in bottom

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" moving up and down work as you would expect
nnoremap <silent>   j gj
nnoremap <silent>   k gk

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev : vsp $MYVIMRC<CR>
nnoremap <leader>ez : vsp ~/.zshrc<CR>
nnoremap <leader>sv	: source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>


" Window movement shortcuts
" move to the window in the direction shown, or create a new window
"
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" expand to the path of the file in current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
 let g:ctrlp_custom_ignore = {
             \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
             \ 'file': '\.exe$\|\.so$'
             \ }

" search the nearest ancestor that contains .git, .hg, .svn
 let g:ctrlp_working_path_mode = 2

" habit breaking, habit making
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <BS> <NOP>
inoremap <Del> <NOP>

set path+=**


"set list
"set list
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:.,extends:⟩,precedes:⟨
"set showbreak=↪\
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·


" Tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
