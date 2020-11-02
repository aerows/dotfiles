:let mapleader=','

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'airblade/vim-gitgutter'                                               " Visualize changes in .git
Plug 'arthurxavierx/vim-caser'
Plug 'christoomey/vim-tmux-navigator'                                       " Move to tmux-pane (SBM)
Plug 'easymotion/vim-easymotion'                                            " Quick motions (SBM)
" Plug 'embear/vim-localvimrc'
Plug 'francoiscabrol/ranger.vim'
Plug 'garbas/vim-snipmate'                                                  " Code snippets
Plug 'honza/vim-snippets'                                                   " Snipmate dep.
Plug 'jeffkreeftmeijer/vim-numbertoggle'                                    " Auto toggle line-numbers
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'                                                    " Zen mode writing
Plug 'MarcWeber/vim-addon-mw-utils'                                         " Snipmate dep.
Plug 'mileszs/ack.vim'                                                      " Search tool
Plug 'nvie/vim-flake8', { 'for': 'python' }                                 " Python highlighting
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'psf/black', { 'branch': 'stable' }                                    " Python formatting
Plug 'ryanoasis/vim-devicons', { 'on': 'NerdTreeToggle' }                   " Show file icons
Plug 'scrooloose/nerdtree', { 'on': 'NerdTreeToggle' }                      " Directory browser 
Plug 'sheerun/vim-polyglot'                                                
Plug 'sillybun/vim-repl', { 'on': 'REPLToggle' }                            " VIM-python repl 
Plug 'SirVer/ultisnips'
Plug 'skammer/vim-css-color'
Plug 'tmhedberg/SimpylFold'
Plug 'tomtom/tlib_vim'                                                      " Snipmate dep.
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'                                                   " Git plugin
Plug 'tpope/vim-surround'                                                   " Surround movement (SBM)
Plug 'valloric/YouCompleteMe'                                               " Auto completion
Plug 'valloric/ycmd'                                                        " Completion server
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }                    " Python auto indent.
Plug 'dense-analysis/ale'
"" Plug 'file://'.expand('~/myplug')
call plug#end()

""" General Settings
set exrc
set secure 
set ignorecase
set smartcase

filetype indent plugin on

set clipboard=unnamed
set encoding=utf-8
set expandtab
set noshowmode
set number relativenumber
set shiftwidth=2
set smartindent
set tabstop=2


""" Search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""" Theme
let g:airline_extensions = []  " To make airline faster
set re=1                       " Supposed to make airline faster

""" Cursor
autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"

if &term =~ '^xterm'
   " normal mode
   let &t_EI .= "\<Esc>[0 q"
   " insert mode
   let &t_SI .= "\<Esc>[6 q"
endif

"""" Easy Motion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1

""" Syntastic
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}

""" Vim-Fugetive
nnoremap <expr> <Leader>gs bufwinnr(".git/index") > 0 ? ':bd .git/index<CR>' : ':Gstatus<CR>'
nnoremap <expr> <Leader>gd &diff ? '<c-w>j <c-w>h :q!<CR>' : ':Gvdiff<CR><c-w><c-p>'
nnoremap <Leader>gc :Gcommit
nnoremap <Leader>ga :Git add %:p<CR><CR>


""" Highlighting
"
:syntax on
:hi Visual term=reverse cterm=reverse ctermbg=Blue

""" Ranger.vim
" let g:ranger_map_keys = 0 " Unmap deafult shortcut
" map - :Ranger<CR>

""" FZF
map <Leader>m :FZF<CR>

""" Mappings - Reload
:map <Leader>M :bo vsp ~/.vimrc<CR>
:map <Leader>r :source ~/.vimrc<CR> :echom "Reloaded source file"<CR>
:map <Leader>R :source ~/.vimrc<CR> :PlugInstall<CR>

""" Mappings - Split panes
:map <Leader><c-h> :vnew<CR>
:map <Leader><c-j> :below new<CR>
:map <Leader><c-k> :new<CR>
:map <Leader><c-l> :below vnew<CR>

""" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

""" Goyo
:map <Leader>z :Goyo<CR>

let g:goyo_height="100%"


function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
"   set noshowmode
"   set noshowcmd
"   set scrolloff=999
endfunction
" 
function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
"   set showmode
"   set showcmd
"   set scrolloff=5
endfunction
 
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" Vim REPL
let g:repl_program = {
            \   'python': ['python3'],
            \   'default': ['bash'],
            \   'r': ['R'],
            \   'lua': ['lua'],
            \   'vim': ['vim -e'],
            \   'sh': ['bash'],
            \   }

" let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
"let g:repl_ipython_version = '7'
nnoremap <leader>q :REPLToggle<Cr>

let g:repl_position = 3

""" Snippets
let g:UltiSnipsExpandTrigger="<c-l>"

" Source Local Vim Env
:if !empty(glob("~/.vimenv"))
:   so ~/.vimenv
:endif

"""Fill to col 80
nnoremap <leader>h $yl80pd80|


" Abbreviations
:iab ,., ‧
:iab ,x, ✘
