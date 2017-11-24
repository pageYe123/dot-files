" ****************
" pageYe's .vimrc
" ****************
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ================================================================
" 安装的所有插件
call vundle#begin()

" 必须安装，let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 来自github

"主题
Plugin 'flazz/vim-colorschemes'

"底部状态栏
Plugin 'Lokaltog/vim-powerline'

"文件目录
Plugin 'scrooloose/nerdtree'

"自动补全
Plugin 'Shougo/neocomplcache.vim'

"括号补全
Plugin 'jiangmiao/auto-pairs'

"语法分析
Plugin 'vim-syntastic/syntastic'

"emmet html5插件
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
" ==============================================================================
" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================
"NERDTree 插件配置
map tt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1   "NERDTREE显示隐藏文件
let NERDTreeShowLineNumbers=1   "显示行号
" ===========================================================
set relativenumber 
set number
set ignorecase
set laststatus=2           "显示底部状态行
set tabstop=4              "设置tab键的缩进长度
set cindent shiftwidth=4   "设置自动缩进的缩进长度,即>>自动缩进的长度
syntax enable
syntax on
autocmd! BufWritePost .vimrc source %
map <D-d> dd
let mapleader=";"

" insert mode shortcut
inoremap jj <ESC>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>
