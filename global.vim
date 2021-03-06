" be 'modern'
set nocompatible
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized 

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set cursorline
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set wrapmargin=0
set wrap
" set nowrap              " Do not wrap words (view)
set linebreak
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode " Show current mode down the bottom
set ttyfast " More smooth screen redrawing
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set nolist " nolist hides invisibles by default, also list disables linebreaks
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set encoding=utf-8
set enc=utf-8
set fileencoding=utf-8
set ruler " Show ruler
set t_Co=256 " Support for xterm with 256 colors (gets overriden in .gvimrc)
" set scrolloff=999 " keep current line centered

" set cmdheight=2 " Make the command line a little taller


" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" status line
" set statusline=%<%1*%f%*\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P
" highlihgt status line file name
hi User1 term=bold,reverse cterm=bold ctermfg=4 ctermbg=2 gui=bold guifg=Blue guibg=#44aa00

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/zsh " use zsh for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " Allow hiding buffers with unsaved changes
set history=1000
set autoread            " automatically read feil that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
"set fixdel                 " fix terminal code for delete (if delete is broken but backspace works)

set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
" set et                  " expand tabs into spaces

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" directory settings
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=0
set nofoldenable        "dont fold by default "


" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim