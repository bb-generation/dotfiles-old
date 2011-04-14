" Use vim, no vi
set nocompatible

" set syntax highlighting on by default
syntax on

" tabbing
set softtabstop=2
set shiftwidth=2

" expanding tabs to whitespaces on by default
set expandtab

" show the matching bracket for the last {( and so on
set showmatch

" show cursor position all the time
set ruler

" ignore case by default
set ignorecase

" <tab> completion should behave like on unix, not DOS
set wildmenu

" stop the annoying bell
set visualbell

" shows how long the current selection is
set showcmd

" highlight search expressions
" set hlsearch

" show the next match while entering a search
set incsearch

" use terminal mouse stuff
set mouse=a

" never use expandtab on Makefiles
autocmd FileType make setlocal noexpandtab

" enable filetype plugin
filetype plugin indent on

" enable ctags search recursively up the directories
set tags=tags;/

" make backspace work like everywhere else
set backspace=2
