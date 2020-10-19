"TODO Add Plugin lh-cpp
"

set laststatus=2
set statusline+=%F

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8          "ctrlspace recommend
set showtabline=0           "ctrlspace recommend
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
"hi link CtrlSpaceSearch IncSearch
"hi CtrlSpaceSearch guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'jlanzarotta/bufexplorer'

Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/gtags.vim'
"Plugin 'vim-scripts/ClassTree'
Plugin 'vim-scripts/autoproto.vim'         
"Plugin 'vim-scripts/let-modeline.vim'
Plugin 'vim-scripts/valgrind.vim'
"Plugin 'vim-scripts/calendar.vim--Matsumoto'

Plugin 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1

Plugin 'bling/vim-bufferline'

Plugin 'Zuckonit/vim-airline-todo'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'asenac/vim-airline-loclist'

Plugin 'Shougo/unite.vim'
"Plugin 'weynhamz/vim-plugin-minibufexpl'
Plugin 'mbbill/undotree'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-signify'                 "It looks like gitgutter is better

Plugin 'tomtom/quickfixsigns_vim'
Plugin 'tomtom/tlib_vim'

Plugin 'edkolev/tmuxline.vim'
Plugin 'gcmt/taboo.vim'

set hidden
let g:airline_exclude_preview = 1
let g:CtrlSpaceUseTabline = 1

Plugin 'vim-ctrlspace/vim-ctrlspace'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround' "DOES NOT SUPPORT VUNDLE ?
Plugin 'tpope/vim-commentary'               "gc gcc gcu
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'

Plugin 'kien/ctrlp.vim'
Plugin 'ciaranm/detectindent'
Plugin 'powerline/powerline'
"Plugin 'klen/python-mode'                  "Does not support Vundle
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'lyuts/vim-rtags'
Plugin 'will133/vim-dirdiff'
Plugin 'jiangmiao/auto-pairs' "match pairs
Plugin 'arrufat/vala.vim'
"Plugin 'udalov/kotlin-vim'
"Plugin 'jeaye/color_coded' "needs Python3
"Plugin 'vim/runtime/plugin/spellfile.vim'


"Plugin 'kana/vim-textobj-user'
"Plugin 'kana/vim-textobj-function'
"Plugin 'kana/vim-textobj-line'
"Plugin 'gioele/vim-autoswap'

"Plugin 'gergap/vim-konsole'
"Plugin 'gergap/vim-latexview'
"Plugin 'gergap/gergap'
"Plugin 'gergap/ShowMarks'
"Plugin 'gergap/refactor'

Plugin 'NLKNguyen/papercolor-theme'
Plugin 'altercation/vim-colors-solarized'

"Plugin 'godlygeek/tabular'
"Plugin 'Townk/vim-autoclose'
Plugin 'vimwiki/vimwiki'
"Plugin 'tenfyzhong/CompleteParameter.vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'rhysd/vim-grammarous'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'SidOfc/mkdx'
"Plugin 'dhruvasagar/vim-table-mode'

if empty($ALEDISABLED)
    Plugin 'dense-analysis/ale'
    nmap <silent> <leader>aj :ALENext<cr>
    nmap <silent> <leader>ak :ALEPrevious<cr>
endif

"Plugin 'dkprice/vim-easygrep'
"EasyGrep options
"let g:EasyGrepCommand=1
"let g:EasyGrepFilesToExclude=".git,GTAGS,GRTAGS,GPATH,cscope.*,cscope.in.out,tags,~*"
"let g:EasyGrepFilesToExclude="--ignore-file=\"is:GTAGS\",--ignore-file=\"is:GRTAGS\",--ignore-file=\"is:GPATH\",--ignore-file=\"is:tags\",--ignore-file=\"match:/cscope.*/\",--ignore-dir=\".git\""
"let g:EasyGrepFilesToExclude="--ignore-file=\"match:/cscope.*/\""
"let g:EasyGrepFilesToExclude="--ignore-file=\"is:cscope.in.out\""
"let g:EasyGrepFilesToExclude="--ignore-file=is:cscope.in.out"
"let g:EasyGrepFilesToExclude="--ignore-file=is:tags"
"let g:EasyGrepFilesToExclude="kjhkjhkjhkjhkjhkjh"
"EasyGrep options end

"Plugin 'othree/eregex.vim'

"Plugin UltiSnip needs Python 3
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Plugin UltiSnip end

"Plugin vim-snipmate begin
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
"Plugin vim-snipmate end
"Plugin 'snipMate.vim'         

"""Plugin 'vim/matchit.vim' "runtime/pack/dist/opt/matchit/plugin/matchit.vim "buggy ?
"""Plugin 'jpalardy/slime.vim'  "buggy"

Plugin 'ervandew/supertab'         
"Plugin 'vimballPlugin.vim'    
Plugin 'zencoding.vim'        

"Plugin 'itchyny/lightline.vim'         "can replace airline

Plugin 'justinmk/vim-syntax-extra'
Plugin 'octol/vim-cpp-enhanced-highlight'

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
" " Vundle end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1 "Powerline fonts on
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Cursor coords in status bar
let g:Powerline_symbols='unicode' "unicode support
"let g:airline#extensions#xkblayout#enabled = 0


":imap <C-J> <Plug>snipMateNextOrTrigger
":smap <C-J> <Plug>snipMateNextOrTrigger

:imap <F7> <Plug>snipMateNextOrTrigger
:smap <F7> <Plug>snipMateNextOrTrigger

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'ryanoasis/vim-devicons'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rbong/vim-flog'           "addon to fugitive"
Plug 'mhinz/vim-startify'       "vim startscreen"

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"sign"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/home/linuxbrew/.linuxbrew/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}
nnoremap <Leader>q :Quickfix<CR>
nnoremap <Leader>l :Quickfix!<CR>

Plug 'nblock/vim-dokuwiki'
let dokuwiki_comment=1

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"nmap <F2> :Gtags<SPACE>
"nmap <F3> :Gtags -f %<CR>
"nmap <F7> :GtagsCursor<CR>

nmap g9 :Gtags<SPACE>
nmap g8 :GtagsCursor<CR>

nmap g1 :Gtags <C-R><C-W><CR>
nmap g2 :Gtags -r <C-R><C-W><CR>
nmap g3 :Gtags -s <C-R><C-W><CR>
nmap g4 :Gtags -g <C-R><C-W><CR>
nmap g5 :Gtags -i



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

filetype off
filetype plugin indent on
syntax on

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

hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
"colo desert
"colo elflord
"colo industry
"colo darkblue
"colo darkZ
"colo koehler
"colo sublimemonokai

"colo desert256v2 "doesn't show git signs ?
"colo desert256

"colo summerfruit256
"colo devbox-dark-256
"colo lizard256
"colo twilight256
"colo lapis256
"colo oceanblack256.vim
"colo tigrana-256-dark
"colo seoul256

"colo Chasing_Logic
"-----------------------
"colo colozone
"colo PapayaWhip
"colo PaperColor
"colo sole
"colo lingodirector
"colo wikipedia
"colo bluish
"colo miko
"colo softbluev2
"colo Tomorrow
"colo Tomorrow-Night-Blue
"colo VIvid

"colo calmar256-dark
"colo desert256v2 
"colo darkblue2
 
colo tabula
"colo cake

"test
"colo reloaded
"colo lilydjwg_dark
"colo tatami


"get colorscheme name"
"echo g:colors_name

syntax on
set hlsearch

set backspace+=start,eol,indent

set path=.
set complete-=i
set complete-=t

if has('cscope')
    set cscopetag cscopeverbose
    set csto=0
    "set csprg=/usr/local/bin/cscope

    if has('quickfix')
        "set cscopequickfix=s-,c-,d-,i-,t-,e-
        set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
    endif

    "fun! MapCSKeys()

        "find symbol"
        nmap c1 :cs f s <C-R><C-W><CR>

        "find definition"
        nmap c2 :cs f g <C-R><C-W><CR>

        "find text"
        nmap c3 :cs f t <C-R><C-W><CR>

        "find assignment"
        nmap c4 :cs f a <C-R><C-W><CR>

        "find egrep pattern"
        nmap c5 :cs f e <C-R><C-W><CR>  

        "find files #including this file"
        nmap c6 :cs f i <C-R><C-W><CR>  

        "find file with name match pattern"
        nmap c7 :cs f f <C-R><C-F><CR>  

        "find function called by this function"
        nmap c8 :cs f d <C-R><C-W><CR>  

        "find function calling this function"
        nmap c9 :cs f c <C-R><C-W><CR>  


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
            :silent cs add ${CSDIR}/cscope.out
        ":else
            "    :echo $CSDIR . "/cscope.out does not exist."
        :endif

    endif

endif

"set makeprg=~/scripts/g_script_opt.sh\ $*
"set makeprg=~/scripts/g_script.sh\ $*

hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF
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

"set makeprg=~/scripts/g_script.csh\ %\
"set makeprg=~/scripts/makeprg\ %\

if !empty($DEV8ELENABLED) && !empty( split( globpath( '.', '*.pro' ), '\n') ) "checking pure Makefile or  Qt pro file
    ":echo "*.pro file found. "

    :set makeprg=make\ -j8
else
    ":echo "*.pro file NOT found. "

    :set makeprg=~/scripts/cmakeprg\ %\
endif

set grepprg=ack\ --nogroup\ $*
set foldmethod=indent

set cursorline
"set cursorcolumn

command Mc execute "mak  clean| mak"

set showcmd
set history=200


"quickfix window autoheight
au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
      exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list
"let g:rtagsRcCmd = '/usr/bin/rc'
set matchpairs+=<:> 

"let g:gitgutter_highlight_lines = 1

" If { not in the first column "check :h [[
"map [[ ?{<CR>w99[{
"map ][ /}<CR>b99]}
"map ]] j0[[%/{<CR>
"map [] k$][%?}<CR>

set dictionary+=/usr/share/dict/words
set dictionary+=~/tmp/dictru

command Cgs execute "changes"

command Pas execute "set paste"
command Nps execute "set nopaste"

set keymap=russian-jcukenwin

if !empty($NOVELENABLED)
    set wrap
    set linebreak
    set nolist  " list disables linebreak
    set scrolloff=1

    set ignorecase  "for autocompletion 
    set infercase   "for autocompletion 

if filereadable( expand( "~/scripts/vimtips/ab" ) )
        so ~/scripts/vimtips/ab
endif



    "set keymap=russian-jcukenwin
    set iminsert=0
    set imsearch=0
    highlight Cursor guifg=NONE guibg=Green
    highlight lCursor guifg=NONE guibg=Cyan
endif

setlocal spelllang=ru_yo,en_us "ёж вместо еж"
set spellfile=~/.vim/spell/ru.utf-8.add

command SP setlocal spell
command NSP setlocal nospell

"do not expand tab in Makefiles
"autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
"set tags=./tags,tags;$HOME
"set tags=./tags,tags
set tags=tags

if has('cscope') && !empty($CSENABLED)
    silent cs f g main
endif

"read pdf xpdf must be installed
":command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"let g:ale_linters = {}
"let b:ale_linters = {'javascript': ['eslint']}

"set autochdir
autocmd BufEnter * silent! lcd %:p:h
