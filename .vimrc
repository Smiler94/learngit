""""""""""""""""""""""""
"一般设定
""""""""""""""""""""""""

"设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"不要使用vi的键盘模式，而是vim自己的
set nocompatible

"history文件需要记录的行数
set history=100

"在处理未保存或只读文件的时候，弹出确认
set confirm

"与windows共享剪贴板
set clipboard+=unnamed

"侦测文件类型
filetype on

"载入文件类型插件
filetype plugin on

"为特定文件类型载入相关缩进文件
filetype indent on 

"保存全局变量
set viminfo+=!

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"语法高亮
syntax on

"高亮字符，让其不受100列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%101v.*'

"状态行颜色
highlight StatusLine guifg=StateBlue guibg=Yellow
highlight StatusLineNC guifg=Yellow guibg=White

""""""""""""""""""""""""""""""""
" 文件设置
""""""""""""""""""""""""""""""""
"不要备份文件(根据自己需要取舍)
set nobackup

"不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

"字符间插入的像素行数目
set linespace=0

"增强模式中的命令自动完成操作
set wildmenu

"在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\%m%r\%3l\%c\%p%%%)

"命令行(在状态行下)的高度，默认为1，这里是2
set cmdheight=2

"使回格键(backspace)正常处理indent,eol,start等
set backspace=2

"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

"可以在buffer的任何地方使用鼠标(类似office中的工作区双击鼠标定位)
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"通过使用:commands命令，告诉我们文件的哪一行被改变过
set report=0

"在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\,stl:\,stlnc:\

""""""""""""""""""""""""""""""""""""
"搜索和匹配
""""""""""""""""""""""""""""""""""""

"高亮显示匹配的括号
set showmatch

"匹配括号高亮的时间(单位是十分之一秒)
set matchtime=5

"在搜索的时候忽略大小写
set ignorecase

"不要高亮被搜索的句子(phrases)
set nohlsearch

"在搜索时，输入的词句的逐字符高亮
set incsearch

"输入:set lisst命令是应该显示些啥？
"set listchars=tab:\|\,trail:,extends:>,precedes:<,eol:$

"状态行显示的内容(包括文件类型和解码)
"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y -\ %H:%m\")}

""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
""""""""""""""""""""""""""""""""""""""

"自动化格式
set formatoptions=tcrqn

"继承前一行的缩进方式，特别适用于多行注释
set autoindent

"自动缩进
set smartindent

"使用C样式的缩进
set cindent

"制表符为4
set tabstop=4

"统一缩进为4
set softtabstop=4
set shiftwidth=4

"""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""

"按照名称排序
let Tlist_Sort_Type="name"

"在右侧显示窗口
let Tlist_Use_Left_Window=1

"压缩方式
let Tlist_Compart_Format=1

"如果只有一个buffer，kill窗口也Kill掉buffer
"let Tlist_Exist_OnlyWindow=1

"不要关闭其他文件的tags
"let Tlist_File_Fold_Auto_Close=0

let Tlist_SHow_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"let g:AutoOpenWinManager=1
colorscheme desert


