set nocompatible              " be iMproved, required
filetype off                  " required

"colorize
syntax on

"line numbers
set number

"always show status line
set laststatus=2
set ttimeoutlen=50

"Sets how many lines of history VIM has to remember
set history=700

"Always show current position
set ruler

"Height of the command bar
set cmdheight=2

"in many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif

"Ignore case when searching
set ignorecase

"When searching try to be smart about cases
set smartcase

"Highlight search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
"set noerrorbells
"set novisualbell
"set t_vb=
set vb t_vb=
"set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" gvim options
if has ('gui_running')

" Set font size for gvim
  set guifont=Monospace\ 10
  set lines=60 columns=100

" turn off sounds for gvim
  "set vb t_vb
endif

" set color scheme
colors elflord

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Use spaces instead of tabs
set expandtab

"Be smart when using tabs 
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>lias clic="ssh mlh2196@clic.cs.columbia.edu"

"auto complete curly braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"auto complete square brackets
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

"auto complete paren
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

"auto complete quotes
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" set the runtime path to include Vundle and initialize
""set rtp+=~/.vim/bundle/Vundle.vim
""call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
""Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
""Plugin 'bling/vim-airline'


" Automatically displays all buffers when there's only one tab open.
""let g:airline#extensions#tabline#enabled = 1

" Enable powerline fonts for airline
"" let g:airline_powerline_fonts = 1

" All of your Plugins must be added before the following line
""call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

