
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
"set spell                       " enable spell checking
set gdefault                    " enablge g flag by default on :substitution
set pastetoggle=<F2>            " toggles paste auto-indention

"" backup
set backup                      " backup of files are made while writing
set undofile                    " turn on persistent undo of files
set undodir=~/.vim/undo         " don't pollute current directory

"" Editor
set number                      " shows line numbers
set ruler                       " shows ruler bar at the bottom
set foldmethod=syntax           " fold by syntax

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" easier navigation between split windows
nnoremap    <c-j> <c-w>j
nnoremap    <c-k> <c-w>k
nnoremap    <c-h> <c-w>h
nnoremap    <c-l> <c-w>l
nnoremap    <c-+> <c-w>+
nnoremap    <c--> <c-w>-

" stupid key fixes
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap Q q

call plug#begin()
Plug 'scrooloose/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'dart-lang/dart-vim-plugin'

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

call plug#end()

" Begin - NERDTree

" nerdtree customization
autocmd vimenter * NERDTree
" close vim on all window close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" End - NERDTree

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
