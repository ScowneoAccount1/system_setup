"set relativenumber
"inoremap ľ <esc>
"vnoremap ľ <esc>
"cnoremap ľ <C-C>
"set timeoutlen=400
"inoremap ľ <Esc>

"set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab smarttab autoindent
"set list listchars=tab:│×,extends:»,precedes:«,nbsp:×,eol:⏎,space:⎵
"filetype indent on
"filetype on
"filetype plugin on
"set exrc
"syntax enable
"set nu

" ============ REGULAR VIM SETTINGS ============
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd VimEnter *.html :set nowrap
" nano like scrolling with caps-j and caps-k
map ± <C-e>
map ł <C-y>
map n n zz
" normal mode with caps+l
inoremap ľ <esc>
vnoremap ľ <esc>
cnoremap ľ <C-C> " save on caps s in insert inoremap š <esc> :w <ENTER> hh i
nmap š :w <ENTER> h
imap š ľ :w <ENTER> h i
nmap <silent> <C-f> :NERDTreeToggle<CR>
" consistent window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <silent> j :normal! gj<CR>
nnoremap <silent> gj :normal! j<CR>
nnoremap <silent> k :normal! gk<CR>
nnoremap <silent> gk :normal! k<CR>
set splitbelow splitright
noremap <silent> <C-Left>  :vertical   resize +3 <CR>
noremap <silent> <C-Right> :vertical   resize -3 <CR>
noremap <silent> <C-Up>    :horizontal resize +3 <CR>
noremap <silent> <C-Down>  :horizontal resize -3 <CR>
set fillchars+=vert:\|
set timeoutlen=400
set relativenumber
autocmd Filetype python  setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
autocmd Filetype html    setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd Filetype haskell setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set smarttab autoindent
set list listchars=tab:│ ,extends:»,precedes:«,nbsp:×,eol:⏎,space:⎵
set encoding=UTF-8
" ============ PLUGINS ============
call plug#begin('~/.config/nvim/plugged')
	Plug 'liuchengxu/space-vim-dark' "+                   === colorschemes ↓
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'dikiaap/minimalist'
	Plug 'tribela/vim-transparent'
	Plug 'vim-python/python-syntax', {'for': 'python'} "+ === language support ↓
	Plug 'ap/vim-css-color'
	Plug 'raichoo/haskell-vim', {'for': 'haskell'}
	Plug 'neovimhaskell/haskell-vim'
	Plug 'luochen1990/rainbow', {'for': ['python', 'haskell', 'cpp', 'scss']}
	Plug 'jbgutierrez/vim-better-comments', {'for': ['python', 'haskell', 'cpp', 'vim', 'css']}
	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
	Plug 'preservim/nerdtree' "+                          === nerstree ↓
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline' "+                     === airline ↓
	Plug 'vim-airline/vim-airline-themes'
	Plug 'neoclide/coc.nvim', {'branch': 'release'} "+    === lsp stuff ↓
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'mattn/emmet-vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'folke/lsp-colors.nvim'
	Plug 'grwlf/cyrvim' " vim keys working for йцукен
	" Plug 'chikko80/error-lens.nvim'
call plug#end()
"inoremap ô <C-p>  "outdated
"inoremap ň <C-n> "outdated

let mapleader = "\\"
let g:user_emmet_leader_key='<C-S-j>'
nmap ď <C-S-j>,
imap ď <C-S-j>,
"the line above is needes for emmet
let g:haskell_classic_highlighting = 1
let g:NERDTreeWinSize = 20
let g:python_highlight_all = 1
let g:python_recommended_style = 0
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'ctermfgs': ['lightblue', 'cyan', 'blue', 'magenta', 'red', 'yellow'],
\}
" let g:bettercomments_language_aliases = { 'python': 'py' } " this is for
" better-comments in python
set complete+=kspell
set completeopt=menuone,noinsert
set shortmess+=c " removes menu below statusbar that says to use ^n and ^p
set colorcolumn=120
set exrc " not sure what it does
set nu " not sure

" ============ COLOURTHEME ============
set t_Co=256
syntax enable
filetype plugin indent on
colorscheme space-vim-dark
"colorscheme onedarkhc
"colorscheme minimalist
"colorscheme PaperColortheme
" let g:PaperColor_Theme_Options = {
  " \   'theme': {
  "\     'default': {
  "\       'transparent_background': 1,
  "\	  'highlight_builtins': 1
  "\     }
  "\   },
  "\   'language': {
  "\     'python': {
  "\       'highlight_builtins' : 1
  "\     }
  "\ }
  "\ }
let g:airline_theme='violet'
hi Comment      cterm=italic guifg=#5c6370 ctermfg=59
hi Normal       ctermbg=NONE guibg=NONE
hi LineNr       guifg=#ffffff ctermfg=9
hi LineNr       ctermbg=NONE guibg=NONE
hi VertSplit    guifg=#aaaaaa ctermfg=8
hi clear CursorLineNr
hi CursorLineNr guifg=yellow ctermfg=3
"+ just stopping arrow keys from working, so that I dont get a stupid
"habit(habbit?)
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
"+ using colemak for insert mode
inoremap e f
inoremap E F
inoremap r p
inoremap R P
inoremap t g
inoremap T G
inoremap y j
inoremap Y J
inoremap u l
inoremap U L
inoremap i u
inoremap I U
inoremap o y
inoremap O Y
inoremap p ;
inoremap P :

inoremap s r
inoremap S R
inoremap d s
inoremap D S
inoremap f t
inoremap F T
inoremap g d
inoremap G D
inoremap j n
inoremap J N
inoremap k e
inoremap K E
inoremap l i
inoremap L I
inoremap ; o
inoremap : O

inoremap n k
inoremap N K
