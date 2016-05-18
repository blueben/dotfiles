""
" .vimrc
"
set all&

set nocompatible               " be iMproved
filetype off                   " required!
set nobackup

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" let Vundle manage Vundle
" required! 
" 'Bundle 'gmarik/vundle'

" My Bundles here:
"
" Bundle 'altercation/vim-colors-solarized'
"Bundle 'tpope/vim-fugitive'
"undle 't9md/vim-chef'
"Bundle 'minibufexpl.vim'
"Bundle 'itchyny/calendar.vim'

filetype plugin indent on      " required!

"" general vim stuff

set sw=2              " shift width
set et                " expand tabs. use 8 spaces instead of a tab.
set nocp              " no compatibility
set ru                " ruler
set sc                " show commands as they're typed
set wmnu              " wild menus for filename completion
"set nowrap           " don't auto wrap
set ww=<,>,h,l        " let arrow keys, h, l move off ends of lines
set scrolloff=2       " show this many extra lines while scrolling
set hidden            " allow hidden unsaved buffers
set foldcolumn=0
"set list lcs=tab:>-,trail:-
set paste

"" Search
set hlsearch          " highlighed searches
set noincsearch       " Incremental search
set ignorecase        " Make case-insenstive searches
set smartcase         " unless they contain at least one capital letter

set nolinebreak       " This displays long lines as wrapped at word boundries
set nobackup          " Don't keep a backup file
set writebackup
set textwidth=0       " Don't wrap words by default

"" Tab control

set tabstop=2
set shiftwidth=2
set expandtab

"" Line Numbering. Use numbers by default, ctrl-N twice to disable

set number
set numberwidth=4
nmap <C-N><C-N> :set invnumber<CR>
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"" filetype stuff

au BufNewFile,BufRead *.c,*.h set filetype=cpp   " treat .c files as C++
au BufNewFile,BufRead *.m,*.mi setf mason
au BufNewFile,BufRead *.rb set sw=2
filetype plugin on
filetype indent on
:au Filetype html,xml,xsl,erb source ~/.vim/scripts/closetag.vim
:au Filetype c,py,rb,erb source ~/.vim/scripts/autoclose.vim
:au Filetype mail set textwidth=80
:au Filetype mail set spell

"" indent params with parens

autocmd BufNewFile,BufRead *.cc,*.cpp,*.h,*.hh,*.java set cinoptions+=(0

"" view options

syntax enable
set t_Co=256
set background=dark
"" colorscheme solarized

set colorcolumn=80

"" include ?'s in keyworks in ruby
set iskeyword=@,48-57,_,192-255,?

"if &term == builtin_gui
"    set bg=dark
"    colorscheme murphy
"    set guioptions=are
"    set guifont=-misc-fixed-medium-r-semicondensed-*-*-120-*-*-c-*-koi8-r
"    autocmd GUIEnter * winsize 100 40 
"endif

"" autocomplete

set dictionary+=/usr/dict/words
set complete=.,w,b,d,u,t,i,k
set infercase

"for minibufexplorer:
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let treeExplVertical=1

set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags,../../../../../../../tags

:map <C-d> :execute 'NERDTreeToggle ' .getcwd()<CR>

set diffopt+=iwhite

