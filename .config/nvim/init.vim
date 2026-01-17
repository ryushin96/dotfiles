" Plug in
call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'Shougo/unite.vim'
call plug#end()

" ######################## 見た目 ########################
set encoding=utf-8 " 文字コード
set title " ターミナルのタブ名に現在編集中のファイル名を設定
set number " 行番号を表示する
set wrap " 行を折り返す
set showmatch " 括弧入力時の対応する括弧を表示
set list "不可視文字の可視化
set matchtime=3 " 対応括弧のハイライト表示を3sにする
set listchars=tab:>.,space:-,
syntax enable
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 
" ### 透過
highlight Normal guibg=none
highlight NonText guibg=none
highlight NormalNC guibg=none
highlight NormalSB guibg=none

" ######################## 検索・置換 ########################
set ignorecase " 大文字小文字の区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan " 検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
set incsearch " 検索文字列入力時に順次対象文字列にヒットさせる
set inccommand=split " インタラクティブに変更
nnoremap <ESC><ESC> :nohl<CR>


" ######################## インデント ########################
set smartindent " オートインデント
set autoindent
set tabstop=4 " スペースn個分で1つのタブとしてカウントするか
set shiftwidth=4 " <Enter>や<<, >>などを押したとき、n個のスペースを挿入
set softtabstop=4 " <tab>を押したとき、n個のスペースを挿入
set expandtab " softtabstop や shiftwidth で設定されている値分のスペースが挿入されたときに、挿入されたスペース数が tabstop に達してもタブに変換されない


" ######################## 補完 ########################
set wildmode=list:longest " コマンドラインの補完
set infercase " 補完時に大文字小文字を区別しない
set wildmenu "コマンドの補完を有効に

" ######################## 操作 ########################
set clipboard+=unnamedplus " クリップボードにコピーする
set paste
set backspace=indent,eol,start " backspaceで様々な文字を消せるようにした
set hidden
set textwidth=0 "自動改行する文字数

" ######################## ログ ########################
set history=5000 "保持するコマンド履歴の数
set noswapfile " swapファイルを保存しない
set noundofile " undoファイルを保存しない
set nobackup " backupを保存しない
set nowritebackup "writebackupを保存しない
set viminfo= " viminfoファイルに保存しない

" ##### 行・列関係 #####
" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>

" ターミナル
nnoremap <leader>t :botright split<CR>:ter<CR>:startinsert<CR>

" 補完
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
" inoremap <silent> jj <ESC>

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
" Unite.vim
nnoremap <silent> ;b :<C-u>Unite buffer<CR>
nnoremap <silent> ;nf :<C-u>Unite file<CR>
nnoremap <silent> ;fr :<C-u>Unite file_rec<CR>
nnoremap <silent> ;bk :<C-u>Unite bookmark<CR>
nnoremap <silent> ;mru :<C-u>Unite file_mru<CR>
nnoremap <silent> ;r :<C-u>Unite -buffer-name=register register<CR>
" zレジスタに指定
vnoremap d "ad
nnoremap d "ad
vnoremap D "aD
nnoremap D "aD
vnoremap x "ax
nnoremap x "ax
vnoremap X "aX
nnoremap X "aX
vnoremap c "ac
nnoremap c "ac
vnoremap C "aC
nnoremap C "aC

" ######################## インデント ########################
set smartindent " オートインデント
set autoindent
set tabstop=4 " スペースn個分で1つのタブとしてカウントするか
set shiftwidth=4 " <Enter>や<<, >>などを押したとき、n個のスペースを挿入
set softtabstop=4 " <tab>を押したとき、n個のスペースを挿入
set expandtab " softtabstop や shiftwidth で設定されている値分のスペースが挿入されたときに、挿入されたスペース数が tabstop に達してもタブに変換されない


