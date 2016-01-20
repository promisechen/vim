""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Doxygen
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/molokai'
let g:DoxygenToolkit_authorName="chenlingxiang"
Plugin 'DfrankUtil'                                             
Plugin 'vimprj'                                                 
Plugin 'indexer.tar.gz'
"Ycm
Plugin 'Valloric/YouCompleteMe'
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ



" 设置字符编码                                                                
set fileencoding=utf-8                                             
set fileencodings=utf-8,gb2312,gb18030,latin1                      
set termencoding=utf-8                                             
set encoding=utf-8                                                 
                                                                   
" 语法高亮                                                         
syntax on                                                          
" 深色背景                                                         

if !has("gui_running")                                                                                                        
    set t_Co=256                                                
endif 
color molokai 
"color evening                                                      
"color peachpuff
"color murphy
" 检测文件类型                                                     
filetype on                                                        
" 根据文件类型加载对应的插件                                       
filetype plugin on                                                 
                                                                
" 显示行号                                                      
set number                                                      
" 在第80列显示竖线                                                      
set cc=80                                                         
" 高亮显示当前行                                                   
set cursorline                                                     
                                                                   
" 设置各种缩进                                                     
set tabstop=4                                                      
set softtabstop=4                                                  
set shiftwidth=4                                                   
set autoindent                                                     
set smartindent                                                    
set cindent                                                        
" tab转换为空格                                                    
set expandtab

" 显示最长列边界                                                   
set cc=64                                                          


"显示行号                                                         
set number                                                         
" 总是显示状态栏                                                   
set laststatus=2                                                   
" 高亮当前行和列                                                   
set cursorline                                                     
set cursorcolumn                                                   
set ruler                                                                          
set rulerformat=%50(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)              
" 高亮显示搜索结果                                                 
set hlsearch                                                       
set incsearch                                                      
" 搜索时不区分大小写                                               
set ignorecase                                                     
set smartcase                                                      
" 在状态栏右侧显示未完成的命令                                     
set showcmd                                                        
" 增强模式的命令补全：在命令行上方显示待选列表                     
set wildmenu                                                       
" 显示tab字符
set list                                                           
set listchars=tab:->
                                                                    



" 将ESC键映射为两次j键 
inoremap jj <Esc> 

" 自动完成大括号 
imap { {<CR>}<Esc>kA<CR>

" Put your non-Plugin stuff after this line
" 允许自动加载.ycm_extra_conf.py，不再提示                         
 let g:ycm_confirm_extra_conf=0                                     
 " 补全功能在注释中同样有效                                         
 let g:ycm_complete_in_comments=1                                   
 " 开启tags补全引擎                                                 
 let g:ycm_collect_identifiers_from_tags_files=1                    
 " 键入第一个字符时就开始列出匹配项                                 
 let g:ycm_min_num_of_chars_for_completion=1                        
 " YCM相关快捷键，分别是\gl, \gf, \gg                                                    
 nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>              
 nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>               
 nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:molokai_original=1

