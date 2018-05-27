"-----------------------------------基本------------------------------------
"处理未保存或只读文件时，弹出确认
set confirm

"自动保存
set autowrite

"历史记录数
set history=1000

"编码设置
set fenc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2313,cp936

"语法高亮
if has("syntax")
syntax on
endif

"设置配色方案
colorscheme ron
"设置行号
set nu

"设置缩进
set tabstop=4
set sts=4
set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4
"设置自动格式化(格式出问题就删掉这行)
set formatoptions=tcrqn

"设置括号配对情况
set showmatch
set matchtime=2

"设置没有自动备份
set noswapfile
set nobackup

"设置纵向虚线对齐

"底部显示光标的位置的状态行
set ruler

"设置查找
"搜索模式忽略大小写
set ignorecase
"如果搜索模式包含大小写则不适用ignorecase
set smartcase
"禁止搜索到文件两端时重新搜索
set nowrapscan
"高亮显示搜索到的文本
set hlsearch
"逐字符高亮
set incsearch
"使用鼠标
"按住 shift 才由鼠标右键处理操作
set mouse=a

"和系统共用剪贴板
set clipboard+=unnamed

"突出显示当前行
set cursorline

"开启折叠，并设置空格来开关折叠
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
set foldclose=all
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR>
"搜索和undo时不展开设置好的折叠
set foldopen-=search
set foldopen-=undo
"tags 设置
set tags=/home/haozhechang/folder_1/linux-4.16/tags
"文件分栏
set nocompatible

"filetype off

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Bundle 'The-NERD-tree'

Bundle 'The-NERD-Commenter'

let NERDTreeWinSize=32

let NERDTreeWinPos="right"

map <C-n> :NERDTreeToggle<CR>

"命令
"BundleList 查看插件列表 
"BundleInstall 安装插件
"BundleClean 删除对应行后，执行，清理插件

Bundle 'Valloric/YouCompleteMe'
"taglist setting
Bundle 'taglist.vim'
"让taglist窗口出现在Vim的左边边
let Tlist_Use_Left_Window = 1 

"当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_File_Fold_Auto_Close = 1 

"只显示一个文件中的tag，默认为显示多个
let Tlist_Show_One_File = 1 

"Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_Sort_Type ='name' 

"Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_GainFocus_On_ToggleOpen = 1 

"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1 

"设置窗体宽度为32，可以根据自己喜好设置
let Tlist_WinWidth = 32 
"这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个
let Tlist_Ctags_Cmd ='/usr/bin/ctags'

"热键设置，我设置成Leader+t来呼出和关闭Taglist
map <F2> :TlistToggle<CR>

Bundle 'jalcine/cmake.vim'
