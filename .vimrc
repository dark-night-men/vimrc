set tags=tags;/
map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set cindent
set smartindent
set expandtab
set tabstop=8
set shiftwidth=4
set cinkeys=0{,0},0),:,0#,!^F,o,O,e
set nu
set showmode
set wrapmargin=200
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set vb
set noswapfile
set tabpagemax=10

  highlight Cursor guibg=Green guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95


"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Courier\ 10\ Pitch\ 12
"  elseif has("gui_win32")
"    set guifont=Consolas:h11:cANSI
"  endif
"endif

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 13
    ""set guifont=Verdana\ 13
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

execute pathogen#infect()
syntax on
filetype plugin indent on
":filetype plugin on

call pathogen#incubate() 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()



:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
:colo desert
:syntax on
:set hlsearch

:set backspace+=start,eol,indent


":cs add ./cscope.out
:cs add ${CSDIR}/cscope.out
:set makeprg=~/scripts/g_script.csh\ %\
