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
"set ignorecase                                                     
"set smartcase                                                      
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



"if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    "set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out  
"    " else add the database pointed to by environment variable 
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
"
"    " show msg when any other cscope db added
"    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

"endif


