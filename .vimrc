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
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Enable mouse in all modes
if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif

if has('gui_macvim')
  " Plugins via vim-plug: https://github.com/junegunn/vim-plug
  call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'pangloss/vim-javascript'
  Plug 'moll/vim-node'
  Plug 'mxw/vim-jsx'
  if has('gui_macvim')
    Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  endif
  call plug#end()

  " Highlight .js as .jsx
  let g:jsx_ext_required = 0

  " Airline.vim
  let g:airline_left_sep=' '
  let g:airline_right_sep=' '
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#tab_min_count = 2
  let g:airline#extensions#tabline#show_buffers = 0
  let g:airline#extensions#tabline#buffer_min_count = 2

  " Start without GitGutter
  let g:gitgutter_enabled = 0

  noremap <Leader>t :NERDTreeToggle<CR>
  noremap <Leader>f :CtrlP<CR>
endif
