" ----------------------------------------------------------------------------
" "THE MODIFIED BEER-WARE LICENSE"
" <git@bbgen.net> wrote this file. You can do whatever you want with this stuff.
" If we meet some day, and you think this stuff is worth it, you can buy me a
" beer in return Bernhard Eder
" ----------------------------------------------------------------------------

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

" read .vimrc in the current directory
set exrc
" disable shell scripts in ./.vimrc
set secure

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
filetype on
filetype plugin indent on

" enable ctags search recursively up the directories
set tags=tags;/

" make backspace work like everywhere else
"set backspace=2

" auto-check for vim comments
set modeline
" but only check the first/last 10 lines
set modelines=10

" tags:
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gtkmm

map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

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

" Mappings:
map <F11> :set invlist<CR>

" Use <F2> to switch to paste-mode (disables autoindent)
set pastetoggle=<F2>

" remember cursor position
" thanks to https://github.com/mitsuhiko/dotfiles
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" prefer unix over windows over os9 formats
" thanks to https://github.com/mitsuhiko/dotfiles/blob/master/vim/vimrc
set fileformats=unix,dos,mac

" folding
" fold on indent
set foldmethod=indent
" disable auto-fold
set foldlevel=99

" always wrap lines longer than the width of the terminal
set wrap

" global search by default
set gdefault

" Directories for swp files
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" 'Edit anyway' if swap file exists
" thanks to https://github.com/henrik/dotfiles/blob/master/vimrc
au SwapExists * let v:swapchoice = 'e'

" Unbreak 'crontab -e' with Vim:
" http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
au FileType crontab set nobackup nowritebackup

" use persistent undo and save it to ~/.vim/undo
" thanks to https://github.com/briancarper/dotfiles/blob/master/.vimrc
if has('persistent_undo')
	set undofile
	execute "set undodir=" . "$HOME" . "/.vim" . "/undo"
endif

