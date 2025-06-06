set scrolloff=5

" 设置leader键为空格
nnoremap <SPACE> <Nop>
let mapleader = " "

" 同步系统的剪切板
"set clipboard=unnamed,unnamedplus

" 需要安装插件IdeaVimExtension，并配置英文键盘，使用Smart input好点
" 在normal模式保持英文 
"set keep-english-in-norma
" 在normal模式保持英文状态,并在回到insert时恢复输入法到原来的状态.
"set keep-english-in-normal-and-restore-in-insert

" search
set hlsearch "高亮显示匹配的搜索结果
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set smartcase "如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set ignorecase "搜索时忽略大小写
set showmatch "光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号

set showmode "在底部显示，当前处于命令模式还是插入模式
set cursorline "高亮显示当前行

set de=on
set scrolloff=5 "垂直滚动时，光标距离顶部 / 底部的位置（单位：行）

" plugins 
nnoremap == :action ReformatCode<CR>
set easymotion
set surround
set ideajoin
set multiple-cursors

"set which-key
" 修改命令的响应时间
set timeoutlen=600
"nnoremap <leader> :WhichKey <CR>  

set ideamarks
set argtextobj
set exchange
set highlightedyank
set textobj-entire
set keep-english-in-normal-and-restore-in-insert
set NERDTree
set ReplaceWithRegister

"Remap multiple-cursors shortcuts for Mac
"nmap <C-n> <Plug>NextWholeOccurrence
"xmap <C-n> <Plug>NextWholeOccurrence
"nmap <C-x> <Plug>SkipOccurrence
"xmap <C-x> <Plug>SkipOccurrence
"nmap <C-p> <Plug>RemoveOccurrence
"xmap <C-p> <Plug>RemoveOccurrence
"nmap <S-C-n> <Plug>AllWholeOccurrences
"xmap <S-C-n> <Plug>AllWholeOccurrences


" basic key mapping 键位映射
nnoremap L $
vnoremap H ^
nnoremap H ^
vnoremap L $

inoremap jk <ESC>
" nerdtre 
nnoremap <leader>d :NERDTreeFocus<CR>
nnoremap <leader>dd :NERDTreeToggle<CR>
nnoremap <A-d> :NERDTree<CR>

" clear the highlighted search result
nnoremap <Leader>ns :nohlsearch<CR>

" 到当前的文件位置
nnoremap <leader>sp :action SelectInProjectView<CR>
"nnoremap <leader>gc :action Git.CompareWithBranch<CR>
"nnoremap <leader>at :action Annotate<CR>

" 查看文件历史记录
nnoremap <leader>fh :action Vcs.ShowTabbedFileHistory<CR>

" 新建文件
nnoremap <leader>nc :action NewClass<CR>
"nnoremap <leader>r :action RecentFiles<CR>

" 书签
nnoremap <leader>bm :action Bookmarks<CR>

set idearefactormode=keep
" Tab operation
" 前后跳转标签页
nnoremap <leader>l gt
nnoremap <leader>h gT

" easymotion
map <leader>f <Plug>(easymotion-s)
" Window operation
" 切换窗口
nnoremap <leader>ww <C-W>w
" only 除此之外全部关闭
nnoremap <leader>wo <C-W>o
" 关闭窗口
nnoremap <leader>wc <C-W>c
" 向下移动窗口
nnoremap <leader>wj <C-W>j
"symotion-s) 向上移动窗口
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
" 向下拆分
nnoremap <leader>ws <C-W>s
nnoremap <leader>w- <C-W>s
" 横向拆分
noremap <leader>wv <C-W>v
nnoremap <leader>w\| <C-W>v

" copy and paste
" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>P "0p
"vnoremap Y "+y

" Insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-i> <Home>
inoremap <C-a> <End>
inoremap <C-d> <Delete>

" Quit normal mode
"nnoremap <Space>q  :action CloseProject<CR>
"nnoremap <Space>Q  :qa!<CR>

" edit vimrc
nnoremap <leader>ve :e ~/.ideavimrc<CR>
nnoremap <leader>vw :w!<CR>
nnoremap <leader>vs :source ~/.ideavimrc<CR>
" idea提示action
nnoremap <leader>ta :action VimFindActionIdAction<CR>

" intellij built in key map
" search
nnoremap <leader>sa :action GotoAction<CR>
nnoremap <leader>sc :action GotoClass<CR>
nnoremap <leader>se :action SearchEverywhere<CR>
noremap <leader>sf :action GotoFile<CR>
noremap <leader>ss :action FindInPath<CR>
" noremap <leader>f :action Find<CR>

" 使用ide的前进后退
nnoremap <C-o> :action Back<CR>
nnoremap <C-i> :action Forward<CR>

nnoremap gs :action GotoSuperMethod<CR>
" 跳转到上次修改的位置
nnoremap gb :action JumpToLastChange<CR>
" 跳转到引用
nnoremap gd :action GotoDeclaration<CR>
" 跳转到实现
nnoremap gi :action GotoImplementation<CR>
" 打开当前文件的结构弹窗
nnoremap gf :action FileStructurePopup<CR>
" 查看引用
nnoremap gu :action FindUsages<CR>

" 重命名
nnoremap <leader>r :action RenameElement<CR>

" build and compile code
nnoremap <leader>mr :action Maven.Reimport<CR>

"toggle something

" run and debug
nnoremap ,d :action Debug<CR>
nnoremap ,r :action Run<CR>
"nnoremap ,c :action CompileDirty<CR>
"nnoremap ,b :action ToggleLineBreakpoint<CR>
"nnoremap ,v :action ViewBreakpoints<CR>

"nmap <C-j> :action StepOver<CR>
"nmap <C-k> :action Resume<CR>
"nmap <C-h> :action StepOut<CR>
"nmap <C-l> :action ForceStepInto<CR>

" ide actions

"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)
