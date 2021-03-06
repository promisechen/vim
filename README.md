# vim
## 安装部署
1. 设置.vimrc
2. 安装vundle插件管理工具
参考”http://www.cnblogs.com/zzqcn/p/4660615.html 2. 插件管理器“
3. 安装Doxygen
参考”http://www.cnblogs.com/zzqcn/p/4660615.html 4. Doxygen注释自动生成“
4. 安装YouCompleteMe
   . 在.vimrc中添加Plugin 'Valloric/YouCompleteMe'，并运行:PluginInstall命令安装
   . yum install cmake
   . 安装clang
      . 下载LLVM source code、Clang source code、Compiler RT source code、Clang tools Extra
5. 安装tlist
            下载taglist.vim：https://github.com/promisechen/vim/plugin/taglist.vim
                  将他放到~/.vim/plugin/下面

## 常用命令
*  ycm 
    automatic extend .ycm_extra_conf.py by project
    usage:
    1.sudo cp ./ycmadd.py to /usr/local/sbin/
    2.sudo chmod a+rwx /usr/local/sbin/ycmadd.py

    $ cd project_path
    $ ycmadd.py

    now you will have a .ycm_extra_conf for your project which include project src dir
    YCM相关快捷键，分别是\gl, \gf, \gg  
    3个快捷键设置是用来快速跳转到符号声明或定义的。我往往只用gg，即将光标定位到某个符号上，  
    按\键后（默认的leader键是\），快速按两次g键，将跳转到该符号的声明或定义位置（Tips: 按<ctrl>+o返回）  
    ctrl+p上翻，ctrl+n下翻  
    ctrl+ww 切换  

* cscope
    cscope -Rbkq  
    Ctrl+]将跳到光标所在变量或函数的定义处 Ctrl+T返回   
    cs find s ---- 查找C语言符号，即查找函数名、宏、枚举值等出现的地方  
    cs find g ---- 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能  
    cs find d ---- 查找本函数调用的函数  
    cs find c ---- 查找调用本函数的函数  
    cs find t: ---- 查找指定的字符串  
    cs find e ---- 查找egrep模式，相当于egrep功能，但查找速度快多了  
    cs find f ---- 查找并打开文件，类似vim的find功能  
    cs find i ---- 查找包含本文件的文   
    所有命令也可以且按銉来实现：   
      Ctrl+\或ctrl+@或ctrl+@ ctrl+@ 再按 s 表示：cs find s命令  

* tab

|命令|	说明|
|:--|:--|
|vim -p <files>	|打开多个文件，并将它们放在标签中|
|:tabe[dit] <file>	|在当前标签页之后新建一个标签页，在其中放置file的内容|
|:tabnew <file>	|新建一个文件file，并为它新建一个标签页
|:tabo[only]	|关闭其他标签页
|:tabc[lose]|
|:q	|关闭当前标签页
|gt	|打开下一个标签页
|gT	|......上一个.........
|:tabfir[st]|
|:tabr[ewind]	|打开第一个标签页
|:tabl[ast]	|打开最后一个标签页
|:tabm[ove] <N>
|:tabm[ove] +<N>
|:tabm[ove] -<N>	|移动标签页：移到到位置N，往右移N个位置，往左移N个位置
|:tabs	|显示当前标签页
|:help tab-page-intro	|查询标签页相关命令
* crt找色问题
   http://blog.csdn.net/wfdtxz/article/details/7354566
