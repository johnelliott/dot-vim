" Use 14pt Monaco
set guifont=Menlo:h12
" Better line-height
set linespace=0
" set gui options for macvim
set guioptions=mg

" read date into buffer
noremap <Leader>d o<esc>:r!date<CR><esc>o<esc>

" Set up grepping with Ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Colors
try
	colorscheme Tomorrow-Night-Bright
catch
	colorscheme default
endtry
noremap <Leader>m :colorscheme Tomorrow<CR>
noremap <Leader>b :colorscheme Tomorrow-Night-Bright<CR>
noremap <Leader>n :colorscheme Tomorrow-Night<CR>
noremap <Leader>v :colorscheme Tomorrow-Night-Eighties<CR>
noremap <Leader>c :colorscheme Solarized<CR> :set background=light<CR>
noremap <Leader>x :colorscheme Solarized<CR> :set background=dark<CR>

