" ----------------------- Basic Setting Start ！-------------------------------



set nocompatible           		        " 不与 Vi 兼容（采用 Vim 自己的操作命令）



syntax on                  		        " 语法高亮
set clipboard=unnamed                   " 共享剪切板

set mouse=a                             " 激活鼠标
set scrolloff=10                        " 在光标接近底端或顶端时，自动下滚或上滚



set showmode                            " 底部展示模式

set t_Co=256                            " 设置使用颜色



set encoding=utf-8                      " 设置编码
language messages zh_CN.utf-8           " 解决consle输出乱码



source $VIMRUNTIME/delmenu.vim          " 解决菜单乱码
source $VIMRUNTIME/menu.vim             " 解决菜单乱码



filetype plugin indent on  		        " 根据检测到的文件类型加载插件



set helplang=cn                         " 设置帮助信息
set ruler                               " 显示标尺，就是在右下角显示光标位置



" ----------------------- Basic Setting End ！---------------------------------




" ----------------------- Cover Setting End ！---------------------------------



set cmdheight=2                         " 设置命令行的高度
set textwidth=80			            " 一行显示多少个字符
set wrap				                " 自动折行,太长的行分成几行显示


set wrapmargin=2			            " 折行处与编辑窗口的右边缘之间空出的字符数
set scrolloff=5				            " 垂直滚动时，光标距离顶部/底部的位置
set sidescrolloff=15			        " 水平滚动时，光标距离行首或行尾的位置



set browsedir=buffer                    " 设定文件浏览器目录为当前目录
set autochdir                           " 自动切换当前目录为当前文件所在的目录
set autoread                            " 自动重新加载外部修改内容


set noerrorbells			            " 出错时，不要发出响声
set visualbell				            " 出错时，发出视觉提示


set history=1000			            " Vim 需要记住多少次历史操作



" ----------------------- Cover Setting End ！---------------------------------




" ----------------------- Search Setting Start ！------------------------



set incsearch              		        " 用/或？搜索时突出显示
set hlsearch             		        " 保持匹配突出显示


set ignorecase                          " 搜索时大小写不敏感
set smartcase                           " 如果有一个大写字母，切换大小写敏感查找
set wildmenu                            " vim 自身命令行模式智能补全


" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch


" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>



" ----------------------- Search Setting End ！------------------------




" ----------------------- Edit Setting Start ！------------------------



set number                   		    " 显示行号
set relativenumber			            " 显示相对行号



set cursorline                          " 高亮显示当前 - 行

hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE guibg=NONE guifg=NONE

set cursorcolumn                        " 高亮显示当前 - 列

hi CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE guibg=NONE guifg=NONE



set autoindent             		        " 按前一行缩进
set expandtab              		        " 使用空格而不是制表符


set softtabstop =4         		        " Tab 键 缩进 4个空格
set shiftwidth  =4         		        " >> tab 缩紧 4个空格
set shiftround             		        " >> 缩进到'shiftwidth'的下一个倍数



" ----------------------- Edit Setting Start ！--------------------------------




" ----------------------- Otner Setting Start ！-------------------------------



set backspace   =indent,eol,start       " 按照您的预期使退格工作
set hidden                 		        " 在缓冲区之间切换而不必先保存
set laststatus  =2         		        " 始终显示状态行
set display     =lastline  		        " 尽可能多地显示最后一行


set showmode               		        " 在命令行中显示当前模式
set showcmd                		        " 当需要更多键时，显示已键入的键


set ttyfast                		        " 更快地重绘
set lazyredraw             		        " 仅在必要时重绘


set splitbelow             		        " 打开当前窗口下方的新窗口
set splitright             		        " 在当前窗口右侧打开新窗口


set cursorline             		        " 快速查找当前行
set wrapscan               		        " 搜索环绕文件末尾
set report      =0         		        " 始终报告更改的行
set synmaxcol   =200       		        " 仅突出显示前200列



" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
set listchars=tab:»■,trail:■
set list


" 底部操作指令按下 Tab 键自动补全
" 第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full



" ----------------------- Other Setting End ！----------------------------------


