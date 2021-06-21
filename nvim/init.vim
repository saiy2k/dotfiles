syntax enable
set encoding=utf-8

" backup
set backup                      " backup of files are made while writing
set undofile                    " turn on persistent undo of files
set undodir=~/.vim/undo         " don't pollute current directory

" Editor
set number                      " shows line numbers
set ruler                       " shows ruler bar at the bottom
set foldmethod=syntax           " fold by syntax

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
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


call plug#begin()
Plug 'preservim/nerdtree'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-angular', 'coc-css', 'coc-html', 'coc-html-css-support', 'coc-tailwindcss', 'coc-tsserver' ]

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

