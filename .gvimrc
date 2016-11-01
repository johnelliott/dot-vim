" Always show status line
set laststatus=2

" Set colors
try
	colorscheme Tomorrow-Night-Bright
catch
	colorscheme default
endtry

" Use 14pt Monaco
set guifont=Menlo:h12
" Better line-height
set linespace=0
" set gui options for macvim
set guioptions=mg

" Plugins and things

" read date into buffer
noremap <Leader>d o<esc>:r!date<CR><esc>o<esc>

" Set up grepping with Ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Set colors
try
	colorscheme Tomorrow-Night-Bright
catch
	colorscheme default
endtry
" Declare color schemes
noremap <Leader>m :colorscheme Tomorrow<CR>
noremap <Leader>b :colorscheme Tomorrow-Night-Bright<CR>
noremap <Leader>n :colorscheme Tomorrow-Night<CR>
noremap <Leader>v :colorscheme Tomorrow-Night-Eighties<CR>

" Plugins via vim-plug: https://github.com/junegunn/vim-plug
silent! call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
silent! call plug#end()

" vim-jsx
" Highlight .js as .jsx
let g:jsx_ext_required = 0

" Airline.vim
" the separator used on the left side >
let g:airline_left_sep=' '
" the separator used on the right side >
let g:airline_right_sep=' '
" Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Configure tabline for AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_min_count = 2

" Start without git gutter
let g:gitgutter_enabled = 0
