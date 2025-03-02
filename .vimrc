" set maxmempattern=5000
set maxmempattern=2000000

set tags=./tags,tags

"TODO Add Plugin lh-cpp
"

" set verbose=15
" set verbosefile=/tmp/vimverbose.log

set laststatus=2
set statusline+=%F

packadd cfilter "quickfix filter"

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

if 0
Plugin 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
"let g:ycm_echo_current_diagnostic = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
endif

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1

Plugin 'bling/vim-bufferline'

Plugin 'Zuckonit/vim-airline-todo'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'asenac/vim-airline-loclist'

Plugin 'Shougo/unite.vim'
"Plugin 'weynhamz/vim-plugin-minibufexpl'
Plugin 'mbbill/undotree'

"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-signify'                 "It looks like gitgutter is better. Bugs in mapping?

Plugin 'tomtom/quickfixsigns_vim'
Plugin 'tomtom/tlib_vim'
"Plugin 'tomtom/tcomment_vim'

Plugin 'edkolev/tmuxline.vim'
Plugin 'gcmt/taboo.vim'

set hidden
let g:airline_exclude_preview = 1
let g:CtrlSpaceUseTabline = 1

" Plugin 'vim-ctrlspace/vim-ctrlspace'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround' "DOES NOT SUPPORT VUNDLE ?
Plugin 'tpope/vim-commentary'               "gc gcc gcu
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-scriptease'

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

if 0
if empty($ALEDISABLED)
    Plugin 'dense-analysis/ale'
    nmap <silent> <leader>aj :ALENext<cr>
    nmap <silent> <leader>ak :ALEPrevious<cr>

    " nmap <F9> <Plug>(ale_fix) "to implement alefixer

    " Map movement through errors without wrapping.
    nmap <silent> <C-k> <Plug>(ale_previous)
    nmap <silent> <C-j> <Plug>(ale_next)

    " OR map keys to use wrapping.
    " nmap <silent> <C-k> <Plug>(ale_previous_wrap)
    " nmap <silent> <C-j> <Plug>(ale_next_wrap)

endif
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

set runtimepath+=~/.vim/zerg_snippets/
"Plugin UltiSnip end

"Plugin vim-snipmate begin
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
"Plugin vim-snipmate end
"Plugin 'snipMate.vim'         
let g:snipMate = { 'snippet_version' : 1 }

"""Plugin 'vim/matchit.vim' "runtime/pack/dist/opt/matchit/plugin/matchit.vim "buggy ?
"""Plugin 'jpalardy/slime.vim'  "buggy"

" Plugin 'ervandew/supertab'         
"Plugin 'vimballPlugin.vim'    
Plugin 'zencoding.vim'        

"Plugin 'itchyny/lightline.vim'         "can replace airline

Plugin 'justinmk/vim-syntax-extra'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'preservim/nerdcommenter'                "\cc \cn "

Plugin 'mattn/emmet-vim'                "for html?"

Plugin 'stefandtw/quickfix-reflector.vim'
"quickfix-reflector options
let g:qf_modifiable = 1
let g:qf_join_changes = 1
let g:qf_write_changes = 1
"quickfix-reflector options END

Plugin 'tweekmonster/braceless.vim'
autocmd FileType python BracelessEnable +indent "braceless option"

Plugin 'fedorenchik/qt-support.vim'

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
Plug 'mhinz/vim-rfc'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"sign"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook

" Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }

set rtp+=~/.fzf

Plug '~/.fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug '/home/linuxbrew/.linuxbrew/opt/fzf'
Plug 'junegunn/fzf.vim'

"Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}     "do not exists any more"

nnoremap <Leader>q :Quickfix<CR>
nnoremap <Leader>l :Quickfix!<CR>

Plug 'nblock/vim-dokuwiki'
let dokuwiki_comment=1

Plug 'liuchengxu/vim-which-key'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'


Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download()  }  }

if 1

Plug 'liuchengxu/vista.vim'
"vista.vim options
function! NearestMethodOrFunction() abort
    return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
" "
" " If you want to show the nearest function in your statusline
" automatically,
" " you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction() 

" let g:vista#renderer#enable_icon = 1

"vista.vim options END
endif

Plug 'cpiger/NeoDebug'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
"It requires asyncrun.vim 2.4.0 or above. Don't forget to setup:

let g:asyncrun_open = 6
"And quickfix window can be opened automatically, otherwise you can't see the task output unless using :copen manually.

"Build and run a single file
"It's convenient for me to build and run a single file directly without creating a new project for that if I want to try some small and new ideas. In this circumstance, we can use :AsyncTaskEdit command to edit the .tasks configuration file in your current project root directory:
"
"[file-build]
"# macros in the "$(...)" form will be substituted, 
"# # shell command, use quotation for filenames containing spaces
"# command=gcc -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
"# # working directory
"# cwd=$(VIM_FILEDIR)
"#
"# [file-run]
"# command="$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
"# cwd=$(VIM_FILEDIR)
"# # output mode: run in a terminal
"# output=terminal
"# There are two tasks file-build and file-run defined in this .tasks file.
"# Then from the directory where this .tasks reside and its child directories,
"# you can use:
"#
"# :AsyncTask file-build
"# :AsyncTask file-run
"#


Plug 'dhruvasagar/vim-table-mode'

if 1 && !&diff

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"coc.nvim config BEGIN

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> g6 <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
" nmap <leader>rn <Plug>(coc-rename) "occupyed by rtag plugin"
nmap <leader>nn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line "fav"
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"coc.nvim config END

"coc extensions

" let g:coc_global_extensions = [
"             \ 'coc-json', 'coc-git', 'coc-vimlsp', 'coc-snippets', 'coc-fzf-preview', 'coc-diagnostic',
"             \ 'coc-highlight', 'coc-sh', 'coc-clangd'
"             \ ]

let g:coc_global_extensions = [
            \ 'coc-json', 'coc-vimlsp', 'coc-snippets', 'coc-fzf-preview', 'coc-diagnostic',
            \ 'coc-highlight', 'coc-sh', 'coc-clangd'
            \ ]


filetype on
autocmd FileType json syntax match Comment +\/\/.\+$+

"coc-vimlsp
let g:markdown_fenced_languages = [
            \ 'vim',
            \ 'help'
            \ ]

"coc-git

" " lightline
" let g:lightline = {
"   \ 'active': {
"   \   'left': [
"   \     [ 'mode', 'paste' ],
"   \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
"   \   ],
"   \   'right':[
"   \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
"   \     [ 'blame' ]
"   \   ],
"   \ },
"   \ 'component_function': {
"   \   'blame': 'LightlineGitBlame',
"   \ }
" \ }

" function! LightlineGitBlame() abort
"   let blame = get(b:, 'coc_git_blame', '')
"   " return blame
"   return winwidth(0) > 120 ? blame : ''
" endfunction

" " navigate chunks of current buffer
" nmap [g <Plug>(coc-git-prevchunk)
" nmap ]g <Plug>(coc-git-nextchunk)
" " navigate conflicts of current buffer
" nmap [c <Plug>(coc-git-prevconflict)
" nmap ]c <Plug>(coc-git-nextconflict)
" " show chunk diff at current position
" nmap gs <Plug>(coc-git-chunkinfo)
" " show commit contains current position
" nmap gc <Plug>(coc-git-commit)
" " create text object for git chunks
" omap ig <Plug>(coc-git-chunk-inner)
" xmap ig <Plug>(coc-git-chunk-inner)
" omap ag <Plug>(coc-git-chunk-outer)
" xmap ag <Plug>(coc-git-chunk-outer)

"end coc-git

autocmd CursorHold * silent call CocActionAsync('highlight')
"coc floating colors dirty hack
if 1 && !has("gui_running")

func! s:my_colors_setup() abort
    " this is an example
    " hi Pmenu guibg=#d7e5dc gui=NONE
    " hi PmenuSel guibg=#b7c7b7 gui=NONE
    " hi PmenuSbar guibg=#bcbcbc
    " hi PmenuThumb guibg=#585858
    "
    
    " highlight CocFloating ctermbg=18

    "good case 1
    " highlight PmenuSel       ctermfg=201 ctermbg=55 guibg=DarkGrey
    " highlight link CocFloating ColorColumn

    "copy from ColorColumn
    " hi PmenuSel ctermfg=white  ctermbg=1 guibg=DarkRed cterm=underline
    " hi CocFloating ctermfg=white ctermbg=18 guibg=DarkBlue

    "+ works with any colorscheme -not very good looking
    hi PmenuSel ctermbg=18 
    hi CocFloating ctermfg=white ctermbg=1 

    "CocHighlightText linked to CursorColumn
    hi CursorColumn   term=reverse ctermbg=red

    "*darkred
    " hi CocFloating ctermfg=white ctermbg=1 guibg=DarkBlue

    "*desert
    " hi CocFloating ctermfg=white ctermbg=3 guibg=DarkBlue

    "*grey *******
    " hi CocFloating ctermfg=11 ctermbg=8 guibg=DarkBlue


    "yellow text over red background
    " hi CocErrorFloat ctermfg=red
    hi CocErrorFloat ctermfg=yellow

    " hi CocNotificationInfo ctermfg=white ctermbg=17
    " hi CocNotificationWarning ctermfg=white ctermbg=2

    hi CocWarningFloat ctermfg=4 ctermbg=3
    hi CocInfoFloat ctermfg=white ctermbg=4

endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

endif

endif
"endif coc


Plug 'tacahiroy/ctrlp-funky'
"ctrlp-funky config BEGIN

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

"ctrlp-funky config END

Plug 'junegunn/vim-peekaboo'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier',
    \ { 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

"improve movement
Plug 'inkarkat/vim-CountJump'
Plug 'inkarkat/vim-ingo-library'

Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

" Initialize plugin system
call plug#end()
"Plug plugin system END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim-modern-cpp options
"Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
"vim-modern-cpp options END


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


map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " .. nr .. "[\t"<CR>
map <F5> :exec("cs f s ".expand("<cword>"))<CR>

"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
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

    set guifont=Monofur\ Nerd\ Font\ Mono\ 24

    "set guifont=Verdana\ 13
    "set guifont=Monospace\ 13
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

filetype off
filetype plugin indent on
syntax on

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
"colo desert256                  "fav"

"colo summerfruit256            "coc"
"colo devbox-dark-256
"colo lizard256                 "+"
"colo twilight256
"colo lapis256                  "+"
"colo oceanblack256.vim
"colo tigrana-256-dark
"colo seoul256                  "++"

"colo Chasing_Logic             "coc"
"-----------------------
"colo colorzone
"colo PapayaWhip
"colo PaperColor                "light"
"colo sole
"colo lingodirector             "light"
"colo bluish
"colo miko                      "dark "+
"colo softbluev2
"colo Tomorrow
"colo Tomorrow-Night-Blue
"colo VIvid

"colo calmar256-dark            "+
"colo desert256v2 
"colo darkblue2
 
"colo tabula 201031     "coc" +++++++

"colo candy             "dark ++"
"colo made_of_code      "dark +

"colo BlackSea

"colo cake              "light +

"colo materialbox       "dark
"colo mayansmoke        "light
"colo messy             "light
"colo moss              "dark
"colo moonshine_minimal "dark
"colo murphy            "dark +"
"colo mushroom          "very dark"
"colo adventurous       "dark"
"colo alduin            "dark"
"colo antares           "dark"
"colo apprentice        "dark"
"colo archery           "dark"
"colo monokai-phoenix   "dark c

colo asmanian2         "dark, light back, wrecked?" fav

"colo aurora            "light"
"colo autumn            "light
"colo autumnleaf        "light contrast +
"colo badwolf           "dark warm +
"colo baycomb           "dark|light?"
"colo beauty256         "light"
"colo beekai            "dark"
"colo bensday           "dark, light back
"colo birds-of-paradise "dark, warmred"
"colo black_angus       "dark, green
"colo blazer            "dark, warm +, fav
"colo borland           "dark, blue back 
"colo bubblegum-256-light   "light"
"colo busybee               "dark"
"colo burnttoast256         "dark +"
"colo wikipedia             "light"
"colo automation            "dark", +
"colo gentooish             "dark"
"colo railscasts            "dark"

"test
"colo reloaded
"colo lilydjwg_dark
"colo tatami                "coc"fav
"colo corporation           "coc"
"colo contrastneed

"get colorscheme name"
"echo g:colors_name

syntax on
set hlsearch

set backspace+=start,eol,indent

set path=.
set complete-=i
set complete-=t

if has('cscope') && !&diff
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
    endif

    if filereadable( $CSDIR . "/cscope.out" )
        :silent cs add ${CSDIR}/cscope.out
        ":else
        "    :echo $CSDIR . "/cscope.out does not exist."
    endif
endif

"set makeprg=~/scripts/g_script_opt.sh\ $*
"set makeprg=~/scripts/g_script.sh\ $*

hi Comment ctermfg=cyan cterm=bold guifg=#FF00FF


if &diff
    set lines=999 columns=999
    set scrollbind

    colorscheme contrastneed
    "colorscheme wikipedia
    "colorscheme oceanblack256
    "colorscheme doriath
    "colorscheme BlackSea
    "colorscheme peachpuff
    "colorscheme slate
    "colorscheme elflord
    "
    "sublimemonokai
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

"set makeprg=~/scripts/g_script.csh\ %\
"set makeprg=~/scripts/makeprg\ %\

if !empty($DEV8ELENABLED)
    \&& (
        \!empty( split( globpath( '.', '*.pro' ), '\n') )
        \|| !empty( split( globpath( '.', 'Makefile' ), '\n') )
    \) "checking pure Makefile or  Qt pro file
    "echo "*.pro or Makefile file found. "

    set makeprg=make\ -j8
    " set makeprg=bear\ --\ make\ -j8
else
    "echo "*.pro or Makefile file NOT found. "

    set makeprg=~/scripts/cmakeprg\ %\
endif

"set grepprg=ack\ --nogroup\ $*
if executable('rg')
    set grepprg=rg\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif
nnoremap gw :grep <cword> . <cr>


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

nnoremap <leader>km :call KeymapToggle()<cr>
command KM :call KeymapToggle()
function! KeymapToggle()

    if &keymap !=""

        setlocal keymap=""
    else

        setlocal keymap=russian-jcukenwin
        "set keymap=russian-jcukenwin
    endif
endfunction


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



    set keymap=russian-jcukenwin
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
set tags=./tags,tags
"set tags=tags

"if has('cscope') && !empty($CSENABLED)
"    silent cs f g main
"endif

"read pdf xpdf must be installed
":command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"let g:ale_linters = {}
"let b:ale_linters = {'javascript': ['eslint']}

"set autochdir
autocmd BufEnter * silent! lcd %:p:h

command AN execute "ALENextWrap"
command AP execute "ALEPreviousWrap"

command DM execute "redir! > /tmp/vim_maps.txt| silent map| silent map! |  redir END| edit /tmp/vim_maps.txt"


"if open curly in the end of line
if 0

    :map [[ ?{<CR>w99[{
    :map ][ /}<CR>b99]}
    :map ]] j0[[%/{<CR>
    :map [] k$][%?}<CR>
endif

"set mouse=a "paste into vim in putty do not working"
" set tags+=/home/zerg/projects/webdev/vimium-c/tags
" set tags=/home/zerg/projects/webdev/vimium-c/tags

set tags=./tags,tags

if has("gui_running")
    if has("gui_gtk2")

        set guifont=Monofur\ Nerd\ Font\ Mono\ 12
        colo DarkDefault
        colo seoul256
        colo welpe
        colo xian
        colo adventurous
        colo softbluev2
        colo atom
        colo tabula



        "set guifont=Verdana\ 13
        "set guifont=Monospace\ 13
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
endif
