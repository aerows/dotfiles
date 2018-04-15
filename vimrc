:let mapleader=','

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion' 
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"""" Easy Motion 
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1

""" Vim-Fugetive

""" NERDTree
map <Leader>m :NERDTreeToggle<CR>

""" Clipboard
set clipboard=unnamed

""" Mappings - Reload
:map <Leader>r :source ~/.vimrc<CR> :echom "Reloaded source file"<CR>
:map <Leader>R :source ~/.vimrc<CR> :PlugInstall<CR> :q<CR> :echom "Reloaded source and plugins"<CR>

""" Mappings - Split panes
:map <Leader><c-h> :vnew<CR>
:map <Leader><c-j> :below new<CR>
:map <Leader><c-k> :new<CR>
:map <Leader><c-l> :below vnew<CR>
