set t_Co=256
set encoding=utf-8

set nocompatible             " be iMproved, required
filetype off                 " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/taglist.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mbbill/undotree'
Plugin 'mtth/locate.vim'
Plugin 'Tabular'
Plugin 'snipMate'
Plugin 'Markdown'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'thinca/vim-quickrun'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'thoughtbot/vim-rspec'
Plugin 'rails.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'shougo/unite.vim'
Plugin 'basyura/unite-rails'
Plugin 'google/vim-colorscheme-primary'

call vundle#end()            " required!

colorscheme primary
set background=light
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cursorline               " 高亮显示当前行
set cursorcolumn             " 高亮显示当前列
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu!                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
" set foldmethod=indent        " 基于缩进进行代码折叠
set foldmethod=syntax        " 基于语法进行代码折叠
set nofoldenable             " 启动 vim 时关闭折叠代码
set listchars=tab:\|\ ,
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

autocmd BufWritePre * :%s/\s\+$//ge  " 行尾空格删除的设置

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Easy Motion
" Bi-directional find motion
" " Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-s)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" " Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
