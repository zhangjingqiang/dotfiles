set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Tabular'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rails.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
" colorschemes
Bundle 'flazz/vim-colorschemes'
colorscheme fu
" airline
Bundle 'bling/vim-airline'
set laststatus=2
" unite
Bundle 'shougo/unite.vim'
Bundle 'basyura/unite-rails'

filetype off                 " required!
filetype plugin indent on    " required!

set nocompatible             " be iMproved
set cursorline               " 下划线
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set listchars=tab:\|\ ,
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

autocmd BufWritePre * :%s/\s\+$//ge  " 行尾空格删除的设置
