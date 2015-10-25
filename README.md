# vim
1. ycm 
    YCM相关快捷键，分别是\gl, \gf, \gg  
    3个快捷键设置是用来快速跳转到符号声明或定义的。我往往只用gg，即将光标定位到某个符号上，  
    按\键后（默认的leader键是\），快速按两次g键，将跳转到该符号的声明或定义位置（Tips: 按<ctrl>+o返回）  
    ctrl+p上翻，ctrl+n下翻  
    ctrl+ww 切换  
2. cscope
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
3. adfa  



