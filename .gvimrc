set guifont=Menlo:h13
set linespace=0
set guioptions=mge

" macvim window size
set lines=44
set columns=120

" grep with ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

try
  colorscheme base16-default-dark
catch
  colorscheme default
endtry
