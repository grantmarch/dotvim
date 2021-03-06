" Pathogen runtime stuff
 
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Colors
if has('gui_running')
    colorscheme monokai
endif

" Fonts
"set guifont=Lucida_Console:h10:cANSI
set guifont=Ubuntu\ Mono\ 10 " on linux

" NERDTree automatically open on startup if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree close if it's the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree CTRL+n to toggle 
map <C-n> :NERDTreeToggle<CR>

" Move between windows

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Get rid of temp files
set noswapfile
set nobackup
set nowritebackup

" Character encoding see http://vim.wikia.com/wiki/Working_with_Unicode
set encoding=utf-8

" Other stuff
syntax on
filetype plugin indent on
