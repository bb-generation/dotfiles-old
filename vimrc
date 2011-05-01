" Use vim, no vi
set nocompatible

" set syntax highlighting on by default
syntax on

" tabbing
"set softtabstop=2
set tabstop=2
set shiftwidth=2

" expanding tabs to whitespaces on by default
"set expandtab

" show the matching bracket for the last {( and so on
set showmatch

" show cursor position all the time
set ruler

" ignore case by default
set ignorecase

" <tab> completion should behave like on unix, not DOS
set wildmenu
set wildmode=longest:full

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
"set backspace=2

" auto-check for vim comments
set modeline

" tags:
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gtkmm

map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

