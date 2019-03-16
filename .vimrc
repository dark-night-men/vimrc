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
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/gtags.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'Shougo/unite.vim'
Plugin 'weynhamz/vim-plugin-minibufexpl'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-signify'                 "It looks like gitgutter is better
Plugin 'tomtom/quickfixsigns_vim'
Plugin 'scrooloose/syntastic'
Plugin 'edkolev/tmuxline.vim'
Plugin 'gcmt/taboo.vim'
set hidden
let g:airline_exclude_preview = 1
let g:CtrlSpaceUseTabline = 1
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'ciaranm/detectindent'
Plugin 'powerline/powerline'
"Plugin 'klen/python-mode'                  "Does not support Vundle
Plugin 'tpope/vim-sensible'
Plugin 'Zuckonit/vim-airline-todo'
Plugin 'tpope/vim-unimpaired'
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround' "DOES NOT SUPPORT VUNDLE ?
"Plugin 'lyuts/vim-rtags'
Plugin 'will133/vim-dirdiff'
Plugin 'jiangmiao/auto-pairs' "match pairs


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

:nmap <F2> :Gtags<SPACE>
:nmap <F3> :Gtags -f %<CR>
:nmap <F7> :GtagsCursor<CR>

map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
map <F5> :exec("cs f s ".expand("<cword>"))<CR>

"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F6> :TlistToggle<CR>

map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>

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

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


"to remove 
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
":filetype plugin on

"call pathogen#incubate() 
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
"let g:ycm_echo_current_diagnostic = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"let g:syntastic_echo_current_error = 0
"for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'

:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
":colo desert
":colo elflord
":colo industry
":colo darkblue
":colo darkZ
":colo koehler
:colo desert256v2

:syntax on
:set hlsearch

:set backspace+=start,eol,indent

:set path=.
:set complete-=i
:set complete-=t

if has('cscope')
    set cscopetag cscopeverbose
    set csto=0

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    "fun! MapCSKeys()
        nmap cF :cs f f <C-R><C-F><CR>
        nmap cS :cs f s <C-R><C-W><CR>
        nmap cI :cs f i <C-R><C-W><CR>
        nmap cE :cs f e <C-R><C-W><CR>
        nmap cG :cs f g <C-R><C-W><CR>
        nmap cD :cs f d <C-R><C-W><CR>
        nmap cC :cs f c <C-R><C-W><CR>
        nmap cT :cs f t <C-R><C-W><CR>
        nmap cWF :vert scs f f <C-R><C-F><CR>
        nmap cWS :vert scs f s <C-R><C-W><CR>
        nmap cWI :vert scs f i <C-R><C-W><CR>
        nmap cWE :vert scs f e <C-R><C-W><CR>
        nmap cWG :vert scs f g <C-R><C-W><CR>
        nmap cWD :vert scs f d <C-R><C-W><CR>
        nmap cWC :vert scs f c <C-R><C-W><CR>
        nmap cWT :vert scs f t <C-R><C-W><CR>
    "endfun

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    ""command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src

    if !empty($CSENABLED)

        :silent exec("! { [[ -e ~/scripts/scope.sh ]] && { pushd $CSDIR; ~/scripts/scope.sh; pushd; } } >>/tmp/vimrc1.log 2>&1 ")
        :if filereadable( $CSDIR . "/cscope.out" )
            :cs add ${CSDIR}/cscope.out
        ":else
            "    :echo $CSDIR . "/cscope.out does not exist."
        :endif

    endif

endif

":set makeprg=~/scripts/g_script_opt.sh\ $*
":set makeprg=~/scripts/g_script.sh\ $*

:hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
set foldmethod=indent


if &diff
    set lines=999 columns=999

    colorscheme BlackSea
    "colorscheme peachpuff
    "colorscheme slate
    "colorscheme elflord
    if has("gui_running")
        if has("gui_gtk2")
            set guifont=Monospace\ 7
            ""set guifont=Verdana\ 13
        elseif has("gui_win32")
            set guifont=Consolas:h11:cANSI
        endif
    endif

endif
"""""""""""""""""""""""""

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"nnoremap ]i :call search('\v\\|.{-}\\|')<CR> "search ident in vim man
nnoremap ]i :call search('\<\w')<CR>

runtime ftplugin/man.vim

"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'

":set makeprg=~/scripts/g_script.csh\ %\
":set makeprg=~/scripts/makeprg\ %\

:if ! empty( split( globpath( '.', '*.pro' ), '\n') ) "checking Qt pro file
    ":echo "*.pro file found. "

    :set makeprg=make\ -j8
:else
    ":echo "*.pro file NOT found. "

    :set makeprg=~/scripts/cmakeprg\ %\
:endif

":set tags=.tags;/
:set grepprg=ack\ --nogroup\ $*
:set foldmethod=indent

:set cursorline
":set cursorcolumn

:command Mc execute "mak  clean| mak"

:set showcmd
:set history=200


"quickfix window autoheight
au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
      exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
":set list
"let g:rtagsRcCmd = '/usr/bin/rc'
set matchpairs+=<:> 

"let g:gitgutter_highlight_lines = 1

" If { not in the first column
":map [[ ?{<CR>w99[{
":map ][ /}<CR>b99]}
":map ]] j0[[%/{<CR>
":map [] k$][%?}<CR>

:set dictionary+=/usr/share/dict/words
:set dictionary+=~/tmp/dictru

:command Cgs execute "changes"

:command Pas execute "set paste"
:command Nps execute "set nopaste"


if !empty($NOVELENABLED)
    :set wrap
    :set linebreak
    :set nolist  " list disables linebreak
    :set scrolloff=5

    if filereadable( expand( "~/scripts/vimtips/ab" ) )
        so ~/scripts/vimtips/ab
    endif

    "setlocal spell spelllang=en_us,ru_ru
    setlocal spell spelllang=ru_yo,en_us "ёж вместо еж"


    set keymap=russian-jcukenwin
    set iminsert=0
    set imsearch=0
    highlight Cursor guifg=NONE guibg=Green
    highlight lCursor guifg=NONE guibg=Cyan
endif
