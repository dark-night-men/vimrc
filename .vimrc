set tags=./.tags,.tags,$CSDIR/.tags;$CSDIR;$HOME
":set tags=${CSDIR}/.tags;/

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"
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

    ""set guifont=Monospace\ 5
    set guifont=Monospace\ 13
    ""set guifont=Verdana\ 13
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF

execute pathogen#infect()
syntax on
filetype plugin indent on
":filetype plugin on

call pathogen#incubate() 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()



:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
":colorscheme desert
:colorscheme elflord
:syntax on
:set hlsearch

:set backspace+=start,eol,indent


":set tags=${CSDIR}/.tags;/

if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    ""command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src

    ":cs add ./cscope.out
    :cs add ${CSDIR}/cscope.out
endif

":set makeprg=~/scripts/g_script.csh\ %\
:set makeprg=~/scripts/g_script.sh\ $*

:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
set foldmethod=indent


if &diff
    "colorscheme slate
    colorscheme elflord
endif
"""""""""""""""""""""""""

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'

let g:ycm_path_to_python_interpreter = '/grid/common/bin/python'
