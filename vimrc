" ==============================
" = Andrew's VIM Configuration =
" ==============================

" -----------------
" Environment Setup
" -----------------

    " Plugin Management (vim-plug)
    call plug#begin('~/.vim/plugged')

    Plug 'altercation/vim-colors-solarized'     " Color scheme
    Plug 'jnurmine/Zenburn'                     " Color scheme
    Plug 'vim-syntastic/syntastic'              " Syntax checking.
    "Plug 'scrooloose/nerdtree'                  " File tree
    Plug 'jistr/vim-nerdtree-tabs'              " Using tabs with file tree
    Plug 'ctrlpvim/ctrlp.vim'                   " Searching from inside vim
    Plug 'tpope/vim-fugitive'                   " Git integration
    "Plug 'Lokaltog/powerline', {'rtp: 'powerline/bindings/vim/'} 
    "Plug 'sjl/gundo.vim'
    Plug 'lervag/vimtex'
    "Plug 'thedber/SimplyFold'                  " Better code folding
    "Plug 'vim-scripts/indentpython.vim         " Better python indentation
    Plug 'Valloric/YouCompleteMe'               " Auto-complete for Python
    "Plug 'nvie/vim-flake8'                      " PEP8 checking for Python
    "Plug 'xdegaye/pyclewn'                      " Python debugger
    Plug 'Shougo/deol.nvim'                     " Shell plugin for Vim. Continuation from vimshell.
    "Plug 'Shougo/vimshell'                      " Shell plugin for Vim
    "Plug 'vim-scripts/Conque-GDB'               " Terminal emulator for CLI programs such as GDB

    call plug#end()


    " --- Directory Setup ---
    set backup
    set backupdir=$HOME/.vim/.vimbackup//
    set directory=$HOME/.vim/.vimswap//
    set undodir=$HOME/.vim/.vimundo//
    set viewdir=$HOME/.vim/.vimviews//

    " Create directories if they don't exist
    silent execute '!mkdir -p $HOME/.vim'
    silent execute '!mkdir -p $HOME/.vim/.vimbackup'
    silent execute '!mkdir -p $HOME/.vim/.vimswap'
    silent execute '!mkdir -p $HOME/.vim/.vimundo'
    silent execute '!mkdir -p $HOME/.vim/.vimviews'


" ----------------
" General Settings
" ----------------
    " Color Scheme
    syntax enable
    set background=dark
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    colorscheme solarized

    " General Keymapping
        let mapleader = ","
        "iunmap jk
        "inoremap jk <esc>       
        "kinoremap <c-[> <Nop>    

    " Navigation
        nnoremap H 0
        nnoremap L $

    " Editing text
        nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel   
        nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel   

    " Vimrc file
        nnoremap <leader>ev :split $MYVIMRC<cr>         
        nnoremap <leader>sv :source $MYVIMRC<cr>        


    " Buffer Management
        " Opening new buffer
        set splitbelow
        set splitright

        " Buffer navigation
        nnoremap <C-J> <C-W><C-J>
        nnoremap <C-K> <C-W><C-K>
        nnoremap <C-L> <C-W><C-L>
        nnoremap <C-H> <C-W><C-H>

        " Display
        set nu                  " line numbers
        noremap <lt> <C-W><lt>
        noremap > <C-W>>
        noremap - <C-W>-
        noremap + <C-W>+


    " Enable filetype specific settings.
    set nocompatible
    filetype plugin indent on
    syntax on

    set backspace=indent,eol,start  " backspace wasn't working without this

    " Access system clipboard
    set clipboard=unnamed

    " Searching
    set ignorecase
    set smartcase



" ----------
" General Formatting
" ----------
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set pastetoggle=<F12>

    set listchars=eol:$,tab:\|\|,trail:-,extends:>,precedes:<,nbsp:⎵

    " Python Specific (work around since python pulgin overrides setlocal in python.vim file)
    "let g:python_recommended_style=0
    "function! SetupPython()
    "    " Here you can have the final say on what is set. So
    "    " fixup any settings you don't like.
    "    setlocal softtabstop=4
    "    setlocal tabstop=4
    "    setlocal shiftwidth=4
    "endfunction
    "command! -bar SetupPython call SetupPython()

" ------------------
" General Programming
" ------------------
    " Enable folding
    set foldmethod=indent
    set foldlevel=99

    " Enable folding with the spacebar
    nnoremap <space> za

    set encoding=utf-8

" -----
" Shell
" -----

" ---
" GDB
" ---
    "let g:ConqueTerm_CloseOnEnd=1   " close conque when program ends running

" -----
" NETRW - Native directory browser
" -----
    let g:netrw_banner = 0
    let g:netrw_liststyle = 3
    let g:netrw_browse_split = 1
    let g:netrw_altv = 1
    let g:netrw_winsize = 25
    "augroup ProjectDrawer
    "    autocmd!
    "    autocmd VimEnter * :Vexplore
    "augroup END

