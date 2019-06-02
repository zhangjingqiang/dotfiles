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
call plug#end()

" nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 0
" ctrlp
let g:ctrlp_custom_ignore = '.git\|vendor\|node_modules\|tags'

" map keys
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>m :TagbarToggle<CR>

" [NERDTree](https://github.com/scrooloose/nerdtree)
" [Tagbar](http://majutsushi.github.io/tagbar/)
" [ack](https://beyondgrep.com/)
" [ctrlp](http://kien.github.io/ctrlp.vim/)
" [Ctags](https://ctags.io/)
" [VimDevIcons](https://github.com/ryanoasis/vim-devicons)
" [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)
