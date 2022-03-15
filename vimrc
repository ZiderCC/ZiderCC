
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","		"设置<leader>按键
set nocompatible		"不兼容原始vi模式
filetype on			"设置开启文件类型检测
filetype plugin on		"设置家在对应类型的插件
syntax enable 			"开启语法高亮
syntax on			"开启自动语法高亮
set cmdheight=2			"设置命令行的高度
set showcmd			"select模式下显示选中的行数
set laststatus=2		"总是显示状态栏
set number			"开启行号显示
set ruler			"总是显示光标位置
set noeb			"关闭错误提示
set t_Co=256			"开启256色支持
set whichwrap+=<,>,h,l		"设置光标跨行
set ttimeoutlen=0		"设置<ESC>按键相应时间
set cursorline			"高亮显示当前行
set virtualedit=block,onemore 	"允许光标出现在最后一个字符的后面


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent			"设置为自动缩进
set cindent			"设置为使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0	"设置C/C++语言的具体缩进方式
set smartindent			"设置为智能的选择对齐方式
filetype indent on		"自适应不同语言的只能缩进
set backspace=2			"设置回车键争产处理indent,eol,start等
