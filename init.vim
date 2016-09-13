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
" read dates into buffer
noremap <Leader>d :r!date<CR>
" set up t for easy tree view
noremap <Leader>t :NERDTreeToggle<CR>
" use fuzzy file finder
" FZF plugin config: https://github.com/junegunn/fzf.vim
noremap <Leader>f :Files<CR>
" Declare color schemes
noremap <Leader>m :colorscheme Tomorrow<CR>
noremap <Leader>b :colorscheme Tomorrow-Night-Bright<CR>
noremap <Leader>n :colorscheme Tomorrow-Night<CR>
noremap <Leader>v :colorscheme Tomorrow-Night-Eighties<CR>
" clear highlighting
"noremap <Leader>h :noh<CR>
noremap <Leader>h :set hlsearch!<CR>
" toggle spelling
noremap <Leader>p :set spell!<CR>

" Ignore case of searches
set ignorecase
" Ignore case of files
set fileignorecase
" Ignore case of wild menu
set wildignorecase
" don't add space when joining lines
set nojoinspaces
" Add the g flag to search/replace by default
set gdefault

" Highlight searches
set nohlsearch
" Always show status line
set laststatus=1
" Start scrolling three lines before the horizontal window border
set scrolloff=2
" Show the (partial) command as it’s being typed
set showcmd
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show “invisible” characters
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_
" line numbers
set nonumber
set norelativenumber
set cursorline
" Show file info
set laststatus=1
set ruler
" Don't soft-wrap text
set nowrap

" Configure tabs
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
"
"Only syntax higlight some of long lines for performance with large files
set synmaxcol=500

if has("clipboard")
  set clipboard=unnamed
endif

" Set up grepping with Ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" never engage ex mode... sry
" http://www.bestofvim.com/tip/leave-ex-mode-good/
nnoremap Q <nop>


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
call plug#end()

" vim-jsx
" Highlight .js as .jsx
let g:jsx_ext_required = 0

" start without git gutter
let g:gitgutter_enabled = 0

" " Airline.vim
" " the separator used on the left side >
" let g:airline_left_sep=' '
" " the separator used on the right side >
" let g:airline_right_sep=' '
" " Separators can be configured independently for the tabline, so here is how you can define 'straight' tabs:
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" " Configure tabline for AirLine
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_min_count = 2
" " Configure tabline buffer display for AirLine
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#buffer_min_count = 2
