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

" read date into buffer
noremap <Leader>d o<esc>:r!date<CR><esc>o<esc>
" set up t for easy tree view
noremap <Leader>t :NERDTreeToggle<CR>
" use fuzzy file finder
" FZF plugin config: https://github.com/junegunn/fzf.vim
noremap <Leader>f :Files<CR>
" toggle spelling
noremap <Leader>p :set spell!<CR>

"Only syntax higlight some of long lines for performance with laege files
set synmaxcol=360

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
if has("clipboard")
  set clipboard=unnamed
endif

" Set up grepping with Ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Colors
try
    colorscheme Tomorrow-Night
catch
    colorscheme default
endtry
noremap <Leader>m :colorscheme Tomorrow<CR>
noremap <Leader>b :colorscheme Tomorrow-Night-Bright<CR>
noremap <Leader>n :colorscheme Tomorrow-Night<CR>
noremap <Leader>v :colorscheme Tomorrow-Night-Eighties<CR>
noremap <Leader>c :colorscheme Solarized<CR> :set background=light<CR>
noremap <Leader>x :colorscheme Solarized<CR> :set background=dark<CR>

" Plugins via vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
"Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dsawardekar/ember.vim'
call plug#end()

" vim-jsx
" Highlight .js as .jsx
let g:jsx_ext_required = 0

" Airline.vim
" the separator used on the left side >
let g:airline_left_sep=' '
" the separator used on the right side >
let g:airline_right_sep=' '
" Separators can be configured independently for the tabline, so here is how you can define 'straight' tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Configure tabline for AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
" Configure tabline buffer display for AirLine
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_min_count = 2


"let g:gitgutter_enabled = 0

