call pathogen#infect() 

syntax enable
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
"set spell                       " enable spell checking
set gdefault                    " enablge g flag by default on :substitution
filetype plugin indent on       " load file type plugins + indentation
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

" chrome navigation
nnoremap    <c-w> :wq<CR>
nmap        <c-tab> :tabNext<CR>
map         <c-tab> :tabNext<CR>
imap        <c-tab> <Esc>:tabNext<CR>i

" stupid key fixes
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap Q q

" enable auto completion
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_min_syntax_length = 1

" theme
highlight   clear
highlight   Pmenu         ctermfg=0 ctermbg=2
highlight   PmenuSel      ctermfg=0 ctermbg=7
highlight   PmenuSbar     ctermfg=7 ctermbg=0
highlight   PmenuThumb    ctermfg=0 ctermbg=7
