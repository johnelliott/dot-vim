" basics
set nocompatible
set ttyfast
set encoding=utf-8 nobomb " Use UTF-8 without BOM
set modelines=0
set nobackup
set noswapfile
set nowritebackup

" mechanics
set backspace=indent,eol,start " Allow backspace in insert mode
set esckeys " Allow cursor keys in insert mode
set nojoinspaces
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2

" searches
set gdefault " default global search with s/a/b/
set wildmenu
set ignorecase " Ignore case of searches
set wildignore+=.*
if exists("&wildignorecase")
  set wildignorecase
endif

" feedback
set shortmess=atI
set belloff=error,esc
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_ " Show “invisible” characters
set scrolloff=5
set nocursorline
set showmode
set showcmd
set ruler
set title
set laststatus=1
set incsearch " Highlight dynamically as pattern is typed
set nohlsearch
set list
set nowrap
set number
set relativenumber

let mapleader=","
nnoremap Q <nop>
noremap <Leader>s :update<CR>
nnoremap <leader>h :set hlsearch!<CR>
nnoremap <Leader>l :set wrap! lbr!<CR>
nnoremap <Leader>r :set number! relativenumber!<CR>
" read date into buffer
noremap <Leader>d o<esc>:r!date<CR><esc>o<esc>

if has("syntax")
  syntax on
  set synmaxcol=300 "2k screen
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

" Plugins via vim-plug: https://github.com/junegunn/vim-plug
silent! call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-syntastic/syntastic'
if has('gui_macvim')
  Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
  noremap <Leader>f :CtrlP<CR>
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  noremap <Leader>t :NERDTreeToggle<CR>
else
  Plug 'junegunn/fzf',
  Plug 'junegunn/fzf.vim'
  noremap <Leader>f :FZF<CR>
endif
silent! call plug#end()

let g:gitgutter_enabled = 0

" Highlight .js as .jsx
let g:jsx_ext_required = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" let vim v7.4 use default colorscheme
if has('termguicolors')
  try
    set termguicolors
    colorscheme base16-default-dark
  endtry
endif
if has('gui_macvim')
  silent! colorscheme base16-default-dark
endif
