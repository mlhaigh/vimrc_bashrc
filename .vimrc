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

"Horizontal line at 80 characters
set colorcolumn=80

"Backspace behaves as expected on Windows
set backspace=2
set backspace=indent,eol,start
