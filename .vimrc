" ===== Vundle Initialization =====

" " This loads all the plugins specified in ~/vundle.vim
" " Use Vundle plugin to manage all other plugins
if filereadable(expand("~/vundles.vim"))
  source ~/vundles.vim
endif

" ===== General =====

colorscheme meh                 " theme
syntax on                       " enable syntax highlighting
set nocompatible                " turn off vi compatibility

set laststatus=2                " always show the status line
set cmdheight=2                 " set cmd height to 2 lines

set tabstop=2                   " number of spaces in a tab
set softtabstop=2               " number of spaces in a tab when editing
set expandtab                   " tabs are spaces

set number                      " show line numbers
set showcmd                     " show command at bottom
set showmatch                   " show matching parenthesis

filetype indent on              " filetype detection
set autoindent                  " keep indent style even if file type not detected

set wildmenu                    " visual autocomplete for command menu

set confirm                     " prompt if error on unsaved changes
" set visualbell                " use visual bell instead of audible one

set clipboard=unnamed           " save to system clipboard when copying

set backspace=indent,eol,start  " set backspace to work like normal

" ===== Autosave after exiting insert mode =====

autocmd InsertLeave * if expand('%') != '' | update | endif


" ===== Search =====

set incsearch           " search as you type
set hlsearch            " highlight search results
set ignorecase          " ignore case when searching
set smartcase           " don't ignore case if we search with caps
map <leader>h :nohl<cr> " clear the highlight

" ===== Custom keybinding =====

let mapleader=","       " leader is comma

" === Line length highlighting ===

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

" ===== fzf =====
set rtp+=/usr/local/opt/fzf
