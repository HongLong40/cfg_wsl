set nocompatible

" Encoding: order is important (see :h scriptencoding)
set encoding=utf-8
scriptencoding utf-8

" File types and syntax
filetype plugin indent on
syntax on

" Settings (general)
set clipboard^=unnamed,unnamedplus
set listchars=eol:¬,tab:⭾⋅,trail:~,extends:>,precedes:<,space:·
set notimeout ttimeout ttimeoutlen=100
set printoptions=left:20pt,right:20pt
set wildmenu wildoptions=pum

" Settings (editing)
set autoindent
set backspace=indent,eol,start
set tabstop=4 softtabstop=4 smarttab shiftwidth=4 expandtab

" Window and Buffer Navigation
set cursorline
set hidden
set number relativenumber
set scrolloff=5
set splitbelow splitright
set title

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-a> ggVG

" Searches
set hlsearch incsearch
set ignorecase smartcase
set showmatch

augroup HLSearchToggle
  autocmd!
  autocmd InsertEnter * :setlocal nohlsearch
  autocmd InsertLeave * :setlocal hlsearch
augroup END

" Status Line (will be using powerline.vim plugin)
set laststatus=2
set noshowmode

" Folding
set foldmethod=marker
set foldmarker=--{,--}

" Copy yanked text to external clipboard
if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif

" Color scheme, highlights, font and cursors
colorscheme industry
highlight Normal       guifg=#cfcfcf guibg=#01101c ctermbg=234
highlight CursorLine   guibg=Grey15 cterm=none ctermbg=239 ctermfg=227
highlight CursorLineNr gui=none guifg=red cterm=none ctermfg=darkred
highlight LineNr       guifg=DarkYellow ctermfg=229
highlight Folded       term=standout ctermfg=11 ctermbg=8 guifg=DarkRed guibg=DarkGrey
highlight Statement    ctermfg=none

" Mappings
let mapleader = " "
" Note: <leader>gb has an intentional trailing space as part of its
"       mapping
nnoremap <leader>gb :ls:b 
nnoremap <silent> <leader>cc :set invcursorcolumn
nnoremap <silent> <leader>nn :set invnumber invrelativenumber
nnoremap <silent> <leader>rt :RainbowToggle
nnoremap <silent> <leader>sc :set invlist
nnoremap <silent> <leader>w  :w
nnoremap <silent> <leader>nh :nohls
nnoremap <silent> <leader>td :s/\[ \]/\[✓\]/j
nnoremap <silent> <leader>tu :s/\[✓\]/\[ \]/
vnoremap <silent> <leader>td :s/\[ \]/\[✓\]/
vnoremap <silent> <leader>tu :s/\[✓\]/\[ \]/
vnoremap <silent> <leader>p "_dP

" Auto-complete () {} [] "" ''
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Abbreviations and Ligatures
iabbrev ... …
iabbrev -> → 
iabbrev bbb [ ]
iabbrev bvb [✓]

" Global variables
let g:rainbow_active = 1
let g:sql_type_default = 'sqlserver'

" netrw defaults (no banner, tree list)
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Set cursor shape
if !has('gui_running')
    " Cursor shape: insert mode: vertical bar;  other modes: underscore
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[4 q"
endif

" GUI: set font, cursor shapes, remove scroll bars
if has('gui_running')
    " toolbar and scrollbars
    set guioptions-=T     " remove toolbar
    set guioptions-=L     " left scroll bar
    set guioptions-=r     " right scroll bar
    set guioptions-=b     " bottom scroll bar
    set guioptions-=h     " only calculate bottom scroll size of current line
    set guifont=JetBrains\ Mono\ Light\ 12
    set guicursor=n-v-c:block-Cursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:hor10-iCursor,r-cr:hor20-iCursor,a:blinkon0et guifont=JetBrains\ Mono\ Light\ 12
    set guicursor=n-v-c:block-Cursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:hor10-iCursor,r-cr:hor20-iCursor,a:blinkon0
    highlight iCursor guifg=bg guibg=red
    highlight MatchParen guibg=DarkBlue
    highlight SpecialKey guifg=orange
endif

set ttymouse=sgr
set mouse=a
