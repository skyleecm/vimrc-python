" let Vundle manage plugins

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" others bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'

Bundle 'klen/python-mode'


" syntax highlighting
filetype plugin indent on
syntax on

" paste mode
set pastetoggle=<F2>
set clipboard=unnamed

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" easier windows navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-c> <C-w>c

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" spaces for tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


set history=700
set undolevels=700

" turn backup off
set nobackup
set nowritebackup
set noswapfile

" rebind <Leader> key
let mapleader = "."


" vim-powerline
set laststatus=2

" ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "new"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" omnicomplete
" supertab
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" python folding f/F
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492 

" to use vundle to install
" vim +BundleInstall +qall

