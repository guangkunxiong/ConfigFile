nnoremap <SPACE> <Nop>
let mapleader = " "

" search
set hlsearch "高亮显示匹配的搜索结果
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set smartcase "如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set ignorecase "搜索时忽略大小写
set showmatch "光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号


" basic key mapping 键位映射
nnoremap L $
vnoremap H ^
nnoremap H ^
vnoremap L $

inoremap jj <ESC>

nnoremap <leader>l gt
nnoremap <leader>h gT

nnoremap <C-o> :vsc View.NavigateBackward<CR>
nnoremap <C-i> :vsc View.NavigateForward<CR>


nnoremap gd :vsc Edit.GoToDeclaration<CR>
nnoremap gi :vsc Edit.GoToDefinition<CR>
nnoremap gu :vsc Edit.FindAllReferences<CR>

nnoremap <leader>r :vsc Refactor.Rename<CR>
nnoremap <leader>f :vsc Edit.Find<CR>
nnoremap <leader>sf :vsc Edit.NavigateTo<CR>
nnoremap <leader>sa :vsc Edit.NavigateTo<CR>
nnoremap <leader>fm :vsc Edit.FormatDocument<CR>

nnoremap <leader>e :vsc View.NextError<CR>
nnoremap <leader>E :vsc View.ErrorList<CR>
nnoremap <leader>q :vsc Edit.FormatDocument<CR>
nnoremap <leader>t :vsc Edit.SurroundWith<CR>
nnoremap <leader>bm :vsc Edit.ToggleBookmark<CR>
nnoremap <leader>bmw :vsc Edit.View.BookmarkWindow<CR>