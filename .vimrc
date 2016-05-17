" Set colors
try
	colorscheme Tomorrow-Night-Bright
catch
	colorscheme default
endtry

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
if has("clipboard")
	set clipboard=unnamed
endif
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" save quickly with leader-s
noremap <Leader>s :update<CR>
" read dates into buffer
noremap <Leader>d :r!date<CR>
" set up t for easy tree view
noremap <Leader>t :NERDTreeToggle<CR>
" Actually do.... " Don’t add empty newlines at the end of files
" set binary
" set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Disable line numbers
set nonumber
" Enable syntax highlighting
syntax on
" Highlight .js as .jsx for vim-jsx plugin
let g:jsx_ext_required = 0
" Don't highlight current line
set nocursorline

" Configure tabs
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2

" don't add space when joining lines
set nojoinspaces
" Show “invisible” characters
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set nohlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=1
" Enable mouse in all modes
if has("mouse")
    set mouse=a
endif
" Use xterm2 mouse mode with support for -drag in tmux
set ttymouse=xterm2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"	set relativenumber
"	au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=2
" set GUI scroll bars off, virtual tabs on, menu bar on
set guioptions=mg
" set line height
set linespace=0
" Set up grepping with Ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
" use US spelling
if has("spell")
    set spelllang=en_us
    "nnoremap <leader>s :set spell!<CR>
endif
" never engage ex mode... sry
" http://www.bestofvim.com/tip/leave-ex-mode-good/
nnoremap Q <nop>" Strip trailing whitespace (,ss)

" Plugins via vim-plug: https://github.com/junegunn/vim-plug
silent! call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
silent! call plug#end()

function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
"noremap <leader>W :w !sudo tee % > /dev/null<CR>
" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Declare color schemes
noremap <Leader>m :colorscheme Tomorrow<CR>
noremap <Leader>b :colorscheme Tomorrow-Night-Bright<CR>
noremap <Leader>n :colorscheme Tomorrow-Night<CR>
