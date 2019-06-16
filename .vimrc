set cursorline
set cursorcolumn

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
call plug#end()

" nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 0
" ctrlp
let g:ctrlp_custom_ignore = '.git\|vendor\|node_modules\|tags'
" easymotion
nmap s <Plug>(easymotion-overwin-f2)

" map keys
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>m :TagbarToggle<CR>
