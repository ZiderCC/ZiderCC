
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","                 "设置<leader>按键
set nocompatible                    "不兼容原始vi模式
filetype on                         "设置开启文件类型检测
filetype plugin on                  "设置家在对应类型的插件
syntax enable                       "开启语法高亮
syntax on                           "开启自动语法高亮
set cmdheight=2                     "设置命令行的高度
set showcmd                         "select模式下显示选中的行数
set laststatus=2                    "总是显示状态栏
set number                          "开启行号显示
set ruler                           "总是显示光标位置
set noeb                            "关闭错误提示
set t_Co=256                        "开启256色支持
set whichwrap+=<,>,h,l              "设置光标跨行
set ttimeoutlen=0                   "设置<ESC>按键相应时间
set cursorline                      "高亮显示当前行
set virtualedit=block,onemore       "允许光标出现在最后一个字符的后面

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                      "设置为自动缩进
set cindent                         "设置为使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0         "设置C/C++语言的具体缩进方式
set smartindent                     "设置为智能的选择对齐方式
set expandtab                       "将制表符扩展为空格
set tabstop=4                       "设置编辑时制表符占用空格数
set shiftwidth=4                    "设置格式化时制表符占用空格数
set softtabstop=4                   "设置4个空格为制表符
set nowrap                          "禁止折行
set smarttab                        "在行和段开始处使用制表符
filetype indent on                  "自适应不同语言的只能缩进
set backspace=2                     "设置回车键争产处理indent,eol,start等

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                        "vim自身命名行模式智能补全
set completeopt-=preview            "补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                        " 高亮显示搜索结果
set incsearch                       " 开启实时搜索功能
set ignorecase                      " 搜索时大小写不敏感

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                        " 设置不备份
set noswapfile                      " 禁止生成临时文件
set autoread                        " 文件在vim之外修改过，自动重新读入
set autowrite                       " 设置自动保存
set confirm                         " 在处理未保存或只读文件的时候，弹出确认

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'                           "vim开始页面
Plug 'preservim/tagbar'                             "显示类/方法/变量
Plug 'preservim/nerdtree'                           "树形目录插件
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      "美化NerdTree显示插件
Plug 'vim-airline/vim-airline'                      "底部状态增强/美化插件
Plug 'vim-airline/vim-airline-themes'               "底部状态增强/美化插件主题
Plug 'junegunn/vim-slash'                           "优化搜索，移动光标后清除高亮
Plug 'tpope/vim-endwise'                            "if/end/endif/end/function补全
Plug 'tpope/vim-fugitive'                           "git插件

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 安装、更新、删除插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 分屏窗口移动
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 复制当前选中到系统剪切板
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <leader><leader>y "+y

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 将系统剪切板内容粘贴到vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader><leader>p "+p

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
