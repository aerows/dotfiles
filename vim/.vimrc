:let mapleader=','

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'airblade/vim-gitgutter'                                               " Visualize changes in .git
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'                                       " Move to tmux-pane (SBM)
Plug 'easymotion/vim-easymotion'                                            " Quick motions (SBM)
Plug 'francoiscabrol/ranger.vim'
Plug 'garbas/vim-snipmate'                                                  " Code snippets
Plug 'geoffharcourt/one-dark.vim'                                           " Theme of choice
Plug 'honza/vim-snippets'                                                   " Snipmate dep.
Plug 'jeffkreeftmeijer/vim-numbertoggle'                                    " Auto toggle line-numbers
Plug 'junegunn/goyo.vim'                                                    " Zen mode writing
Plug 'MarcWeber/vim-addon-mw-utils'                                         " Snipmate dep.
Plug 'nvie/vim-flake8'                                                      " Python highlighting
Plug 'plasticboy/vim-markdown'
Plug 'python-mode/python-mode', {'for': 'python', 'branch': 'develop'}
Plug 'ryanoasis/vim-devicons'                                               " Show file icons
Plug 'scrooloose/nerdtree'                                                  " Directory browser
Plug 'sheerun/vim-polyglot'                                                
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
Plug 'vim-airline/vim-airline-themes'                                        
Plug 'vim-scripts/indentpython.vim'                                         " Python auto indent.
Plug 'vim-syntastic/syntastic'                                              " Syntax highlighting
Plug 'wincent/command-t'
call plug#end()


""" General Settings
filetype indent plugin on

set clipboard=unnamed
set encoding=utf-8
set expandtab
set noshowmode
set number relativenumber
set shiftwidth=2
set smartindent
set tabstop=2


""" Theme
syntax on
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

""" Cursor
autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"

"""" Easy Motion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1

""" Vimux
let g:VimuxHeight = "20"
let g:VimuxOrientation = "v"
let g:VimuxResetSequence = ""
" let g:VimuxRunnerType = "pane"
map <Leader>.r :call VimuxPromptCommand() <CR>
map <Leader>.l :call VimuxRunLastCommand() <CR>
map <Leader>.c :call VimuxCloseRunner() <CR>


""" Vim-Fugetive
nnoremap <expr> <Leader>gs bufwinnr(".git/index") > 0 ? ':bd .git/index<CR>' : ':Gstatus<CR>'
nnoremap <expr> <Leader>gd &diff ? '<c-w>j <c-w>h :q!<CR>' : ':Gvdiff<CR><c-w><c-p>'
nnoremap <Leader>gc :Gcommit
nnoremap <Leader>ga :Git add %:p<CR><CR>


""" Highlighting
:syntax on
:hi Visual term=reverse cterm=reverse ctermbg=Blue

""" Ranger.vim
let g:ranger_map_keys = 0 " Unmap deafult shortcut
map - :Ranger<CR>

""" NERDTree
map <Leader>m :NERDTreeToggle<CR>

""" Mappings - Reload
:map <Leader>M :bo vsp ~/.vimrc<CR>
:map <Leader>r :source ~/.vimrc<CR> :echom "Reloaded source file"<CR>
:map <Leader>R :source ~/.vimrc<CR> :PlugInstall<CR>

""" Mappings - Up/Down insertmode
:inoremap <c-j> <Down>
:inoremap <c-k> <Up>

""" Mappings - Split panes
:map <Leader><c-h> :vnew<CR>
:map <Leader><c-j> :below new<CR>
:map <Leader><c-k> :new<CR>
:map <Leader><c-l> :below vnew<CR>
"
""" NERDTree
map <Leader>m :NERDTreeToggle<CR>

""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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



""" Snippets
let g:UltiSnipsExpandTrigger="<c-l>"

"" let python_highlight_all=1
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 0

" Source Local Vim Env
:if !empty(glob("~/.vimenv"))
:   so ~/.vimenv
:endif
