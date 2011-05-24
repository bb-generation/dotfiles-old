" ----------------------------------------------------------------------------
" "THE MODIFIED BEER-WARE LICENSE"
" <git@bbgen.net> wrote this file. You can do whatever you want with this stuff.
" If we meet some day, and you think this stuff is worth it, you can buy me a
" beer in return Bernhard Eder
" ----------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"-                               .vimrc                                        -
"-------------------------------------------------------------------------------

" Use vim default settings.
" This has to be first because it changes how some other options work.
set nocompatible

"-------------------------------------------------------------------------------
"-                               Global vim settings                           -
"-------------------------------------------------------------------------------

set exrc                     " read .vimrc in the current directory
set secure                   " disable shell scripts in ./.vimrc
set visualbell               " stop the annoying bell
set modeline                 " auto-check for vim comments in the file)
set modelines=10             " but only check the first/last 10 lines
set fileformats=unix,dos,mac " prefer unix over windows over os9 formats


"-------------------------------------------------------------------------------
"-                               Editing settings                              -
"-------------------------------------------------------------------------------

set backspace=2           " make backspace work like everywhere else
set wildmenu              " use enhanced tab completion
set wildmode=longest:full " <tab> completion should behave like on unix, not DOS
set mouse=a               " use terminal mouse stuff
set wrap                  " always wrap lines longer than the width of the terminal
set textwidth=80          " Wrap lines longer than 80 characters


"-------------------------------------------------------------------------------
"-                             Indentation settings                            -
"-------------------------------------------------------------------------------

set softtabstop=2 " Use two characters for a tab by default
set tabstop=2     " Also show them as two chars
set shiftwidth=2  " And shift with 2 chars
set noexpandtab   " Do not expand tabs by default


"-------------------------------------------------------------------------------
"-                             Syntax settings                                 -
"-------------------------------------------------------------------------------

syntax on             " set syntax highlighting on by default
set showmatch         " show matching brackets
set ruler             " display ruler (shows cursor position at bottom right)
set showcmd           " shows how long the current selection is
set foldmethod=indent " fold on indent
set foldlevel=99      " disable auto-fold


"-------------------------------------------------------------------------------
"-                              Search settings                                -
"-------------------------------------------------------------------------------

set ignorecase " ignore case by default
set hlsearch   " highlight search expressions (disable it temp with :noh)
set incsearch  " show the next match while entering a search
set gdefault   " global search by default


"-------------------------------------------------------------------------------
"-                                Persistent settings                          -
"-------------------------------------------------------------------------------

" remember cursor position
" thanks to https://github.com/mitsuhiko/dotfiles
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set backup                             " use backup files
set backupdir=~/.vim/backup            " directory to save backup files
set directory=~/.vim/backup            " directory to save swap files
au SwapExists * let v:swapchoice = 'e' " 'Edit anyway' if swap file exists

" Unbreak 'crontab -e' with Vim:
" http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
au FileType crontab set nobackup nowritebackup

" use persistent undo and save it to ~/.vim/undo
" thanks to https://github.com/briancarper/dotfiles/blob/master/.vimrc
if has('persistent_undo')
	set undofile
	set undodir=~/.vim/undo
endif

"-------------------------------------------------------------------------------
"-                                Pathogen plugin                              -
"-------------------------------------------------------------------------------

call pathogen#runtime_append_all_bundles()


"-------------------------------------------------------------------------------
"-                               Filetype specific things                      -
"-------------------------------------------------------------------------------

filetype on               " enable filetype plugin
filetype plugin indent on " enable language dependent indentation


"-------------------------------------------------------------------------------
"-                               Autocomplete settings                         -
"-------------------------------------------------------------------------------

set tags=tags;/             " enable ctags search recursively up the directories
set tags+=~/.vim/tags/cpp   " include std:: tags
set tags+=~/.vim/tags/gtkmm " include gtkmm tags

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1      " autocomplete after .
let OmniCpp_MayCompleteArrow = 1    " autocomplete after ->
let OmniCpp_MayCompleteScope = 1    " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


"-------------------------------------------------------------------------------
"-                             Mappings                                        -
"-------------------------------------------------------------------------------

" disable <F1>-Helpkey and map it to <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


set pastetoggle=<F2> " Use <F2> to switch to paste-mode (disables autoindent)

" toggle list (shows spaces, tabs, line endings, ...)
map <F11> :set invlist<CR>

" create c++ tags file for current directory (recursive)
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>



"-------------------------------------------------------------------------------
"-                         Disable Arrow Keys                                  -
"-------------------------------------------------------------------------------

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" j/k should move by display line, not file line
nnoremap j gj         
nnoremap k gk


