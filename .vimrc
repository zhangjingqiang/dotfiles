set cursorline
set cursorcolumn

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
call plug#end()

" nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 0
map <C-n> :NERDTreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" ctrlp
let g:ctrlp_custom_ignore = '.git\|vendor\|node_modules\|log\|env\|tags'

" easymotion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
