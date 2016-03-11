" Set colors
try
    colorscheme Tomorrow-Night-Bright
catch
    colorscheme default
endtry

" Change mapleader
let mapleader=","
" save quickly with leader-s
noremap <Leader>s :update<CR>
" no highlight quickly with leader-n
noremap <Leader>n :noh<CR>
" set up t for easy tree view
noremap <Leader>t :NERDTreeToggle<CR>

" no highlight quickly with leader-n
noremap <Leader>n :noh<CR>

" Ignore case of searches
set ignorecase
" don't add space when joining lines
set nojoinspaces
" Add the g flag to search/replace by default
set gdefault

" Highlight searches
set nohlsearch
" Always show status line
set laststatus=1
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Show the (partial) command as it’s being typed
set showcmd
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show “invisible” characters
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_

" Configure tabs
"set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

if has("clipboard")
    set clipboard=unnamed
endif

" TODO
" make searching case insensitive
" Set up grepping with Ag


" Plugins via vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
"Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Highlight .js as .jsx for vim-jsx plugin
let g:jsx_ext_required = 0

" FZF plugin config: https://github.com/junegunn/fzf.vim
noremap <Leader>f :Files<CR>

" never engage ex mode... sry
" http://www.bestofvim.com/tip/leave-ex-mode-good/
nnoremap Q <nop>
