"-------- General -------"
syntax enable
set background=dark
colorscheme delek

"256 colours, please
set t_Co=256
set term=xterm-256color

"line numbers"
set number


"-------- Search -------"
"highlist search"
set hlsearch
set incsearch


"-------- Tabs & indentation -------"

set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
set nowrap


"-------- Interactions -------"

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1

" Backspace behaviour
set backspace=2


"-------- Visual decorations -------"

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title

"-------- Fix Background for vim 9 -------"
augroup transparent_bg | au!
	au Colorscheme * hi Normal ctermbg=NONE
	au Colorscheme pablo hi Identifier ctermfg=37
	au Colorscheme pablo hi Special ctermfg=63
augroup END
color pablo

"-------- Auto commands -------"
"automatically source the Vimrc file on save.
augroup autosourcing
   autocmd!
   autocmd BufWritePost .vimrc source %
augroup END


"-------- Mappings-------"
"make it easy to edit the vimrc file"
nmap ,ev :tabedit $MYVIMRC<cr>
nmap ,<space> :nohlsearch<cr>

set encoding=utf-8
set directory=~/.vim-swp " *.swp files will end up here


"-------- When editing a file, always jump to the last known cursor position -------"
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


"-------- Delete trailing whitespaces on saving a file-------"
autocmd BufWritePre * :%s/\s\+$//e

source ~/.vim/.vimrc
