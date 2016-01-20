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



" �����ַ�����                                                                
set fileencoding=utf-8                                             
set fileencodings=utf-8,gb2312,gb18030,latin1                      
set termencoding=utf-8                                             
set encoding=utf-8                                                 
                                                                   
" �﷨����                                                         
syntax on                                                          
" ��ɫ����                                                         

if !has("gui_running")                                                                                                        
    set t_Co=256                                                
endif 
color molokai 
"color evening                                                      
"color peachpuff
"color murphy
" ����ļ�����                                                     
filetype on                                                        
" �����ļ����ͼ��ض�Ӧ�Ĳ��                                       
filetype plugin on                                                 
                                                                
" ��ʾ�к�                                                      
set number                                                      
" �ڵ�80����ʾ����                                                      
set cc=80                                                         
" ������ʾ��ǰ��                                                   
set cursorline                                                     
                                                                   
" ���ø�������                                                     
set tabstop=4                                                      
set softtabstop=4                                                  
set shiftwidth=4                                                   
set autoindent                                                     
set smartindent                                                    
set cindent                                                        
" tabת��Ϊ�ո�                                                    
set expandtab

" ��ʾ��б߽�                                                   
set cc=64                                                          


"��ʾ�к�                                                         
set number                                                         
" ������ʾ״̬��                                                   
set laststatus=2                                                   
" ������ǰ�к���                                                   
set cursorline                                                     
set cursorcolumn                                                   
set ruler                                                                          
set rulerformat=%50(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)              
" ������ʾ�������                                                 
set hlsearch                                                       
set incsearch                                                      
" ����ʱ�����ִ�Сд                                               
set ignorecase                                                     
set smartcase                                                      
" ��״̬���Ҳ���ʾδ��ɵ�����                                     
set showcmd                                                        
" ��ǿģʽ�����ȫ�����������Ϸ���ʾ��ѡ�б�                     
set wildmenu                                                       
" ��ʾtab�ַ�
set list                                                           
set listchars=tab:->
                                                                    



" ��ESC��ӳ��Ϊ����j�� 
inoremap jj <Esc> 

" �Զ���ɴ����� 
imap { {<CR>}<Esc>kA<CR>

" Put your non-Plugin stuff after this line
" �����Զ�����.ycm_extra_conf.py��������ʾ                         
 let g:ycm_confirm_extra_conf=0                                     
 " ��ȫ������ע����ͬ����Ч                                         
 let g:ycm_complete_in_comments=1                                   
 " ����tags��ȫ����                                                 
 let g:ycm_collect_identifiers_from_tags_files=1                    
 " �����һ���ַ�ʱ�Ϳ�ʼ�г�ƥ����                                 
 let g:ycm_min_num_of_chars_for_completion=1                        
 " YCM��ؿ�ݼ����ֱ���\gl, \gf, \gg                                                    
 nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>              
 nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>               
 nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:molokai_original=1

