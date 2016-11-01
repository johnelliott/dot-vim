set nocompatible
set ttyfast
set encoding=utf-8 nobomb " Use UTF-8 without BOM

set backspace=indent,eol,start " Allow backspace in insert mode
set esckeys " Allow cursor keys in insert mode
set nojoinspaces
set nostartofline " Don’t reset cursor to start of line when moving around.

set gdefault " default global search with s/a/b/
set wildmenu
set wildignorecase " Ignore case of wild menu
set ignorecase " Ignore case of searches
set fileignorecase

set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2

set shortmess=atI
set showmode
set showcmd
set ruler
set title
set laststatus=2
set scrolloff=2
set nocursorline
set incsearch " Highlight dynamically as pattern is typed
set nohlsearch " Don't highlight matches
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_ " Show “invisible” characters
set list
set nowrap

let mapleader=","
nnoremap Q <nop>
noremap <Leader>s :update<CR>
nnoremap <leader>h :set hlsearch!<CR>

if has("syntax")
  syntax on
  set synmaxcol=360 "WQGA/WQXGA
endif

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
if has("clipboard")
  set clipboard=unnamed
endif

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

if has("spell")
    set spelllang=en_us
    nnoremap <leader>p :set spell!<CR>
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable mouse in all modes
if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif
