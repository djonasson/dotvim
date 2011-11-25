" https://github.com/tpope/vim-pathogen
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories.
call pathogen#infect()

" Setup the mapleader
let mapleader = "\\"

" =============================================================================
" keep backups but place them in a separate folder
set backup

function InitBackupDir()
let separator = "."
let parent = $HOME .'/' . separator . 'vim/'
let backup = parent . 'backup/'
let tmp    = parent . 'tmp/'
if exists("*mkdir")
if !isdirectory(parent)
call mkdir(parent)
endif
if !isdirectory(backup)
call mkdir(backup)
endif
if !isdirectory(tmp)
call mkdir(tmp)
endif

endif
let missing_dir = 0
if isdirectory(tmp)
execute 'set backupdir=' . escape(backup, " ") . "/,."
else
let missing_dir = 1
endif
if isdirectory(backup)
execute 'set directory=' . escape(tmp, " ") . "/,."
else
let missing_dir = 1
endif
if missing_dir
echo "Warning: Unable to create backup directories: "

. backup ." and " . tmp
echo "Try: mkdir -p " . backup

echo "and: mkdir -p " . tmp
set backupdir=.

set directory=.
endif

endfunction

call InitBackupDir()
" =============================================================================

set nocompatible

" allow to change buffers although the current one hasn't been saved
set hidden

" syntax highlight
syntax on

" auto-detect the filetype
filetype plugin indent on

" Stop vim from asking if you want to write the file before leaving buffer
set autowrite

" Incrementally jump to the search result
set incsearch

" Highlight search results
set hlsearch

" ignore case while searching
set ignorecase

" Wrap too long lines
set wrap

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2

" spaces instead of tabs
set expandtab

" guess indentation
set autoindent

" Expand the command line using tab
set wildchar=<Tab>

" show matches when opening file etc. don't do greedy matching.
set wildmode=longest,list

" show matching files list when using :e etc. don't use greedy matching.
set wildmode=longest,list

" start searching immediately when using /something
set sm

" have Q reformat the current paragraph (or selected text if there is any):
nnoremap Q gqap
vnoremap Q gq

"Highlight trailing whitespace
set list listchars=trail:.
highlight SpecialKey ctermfg=DarkGray

"Differentiate tabs from spaces
set list listchars=tab:\|_,trail:.

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
set nonumber

" https://github.com/jamis/fuzzy_file_finder.git
" gem install --source=http://gems.github.com jamis-fuzzy_file_finder
" Bind fuzzy finder to Ctrl-t
"map <C-t> :FuzzyFinderTextMate<CR>
"let g:fuzzy_ceiling=20000
"let g:fuzzy_matching_limit=25
"let g:fuzzy_ignore = "gems/*;log/*;vendor/*;assets/*"


" Move row up with Ctrl-up
map <C-Up> ddkP

" Move row down with Ctrl-down
map <C-Down> ddp


" Remove the icon menu
set guioptions-=T

" Choose theme based upon terminal type
if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme desert
endif

" Set the default font
set gfn=DejaVu\ Sans\ Mono\ 8

" 1000 undo levels
set undolevels=1000

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Modifications for the minibufexpl plugin:
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMaxSize = 2

" Modifications for the NERDTree plugin
map <F12> :NERDTreeToggle<CR>

let g:browser = 'firefox -new-tab '
" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>

" Remove trailing white-spaces with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" FuzzyFinder
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>s :FufTag<CR>

" ack-grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column" 
