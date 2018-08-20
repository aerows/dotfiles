:let mapleader=','

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'skammer/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion' 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'plasticboy/vim-markdown'
Plug 'speedyleion/vim-jira'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'valloric/ycmd'
Plug 'valloric/YouCompleteMe'
Plug 'tpope/vim-dispatch'
Plug 'chikamichi/mediawiki.vim'
Plug 'aquach/vim-mediawiki-editor'
call plug#end()

""" General Settings
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
set encoding=utf-8

""" Cursor
autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'" 

"""" Easy Motion 
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1

""" Vim-Fugetive
nnoremap <expr> <Leader>gs bufwinnr(".git/index") > 0 ? ':bd .git/index<CR>' : ':Gstatus<CR>'
nnoremap <expr> <Leader>gd &diff ? '<c-w>j <c-w>h :q!<CR>' : ':Gvdiff<CR><c-w><c-p>'
nnoremap <Leader>gc :Gcommit 
nnoremap <Leader>ga :Git add %:p<CR><CR>

""" Airline theme
let g:airline_theme='bubblegum'
:set background=dark

""" Highlighting
:syntax on 
:hi Visual term=reverse cterm=reverse ctermbg=Blue


""" NERDTree
map <Leader>m :NERDTreeToggle<CR>

""" Mappings - Reload
:map <Leader>r :source ~/.vimrc<CR> :echom "Reloaded source file"<CR>
:map <Leader>R :source ~/.vimrc<CR> :PlugInstall<CR> 

""" Mappings - Split panes
:map <Leader><c-h> :vnew<CR>
:map <Leader><c-j> :below new<CR>
:map <Leader><c-k> :new<CR>
:map <Leader><c-l> :below vnew<CR>
""" NERDTree
map <Leader>m :NERDTreeToggle<CR>

""" Python
""" Code folding
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

""" Flag whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

""" Copy file name
" Convert slashes to backslashes for Windows.
if has('win32')
  nmap <Leader>cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap <Leader>cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap <Leader>c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap <Leader>cs :let @*=expand("%")<CR>
  nmap <Leader>cl :let @*=expand("%:p")<CR>
endif

" URL encode/decode selection
vnoremap <leader>en :!python -c 'import sys,urllib;print urllib.quote(sys.stdin.read().strip())'<cr>
vnoremap <leader>de :!python -c 'import sys,urllib;print urllib.unquote(sys.stdin.read().strip())'<cr>

" Source Local Vim Env
:if !empty(glob("~/.vimenv"))
:   so ~/.vimenv
:endif
