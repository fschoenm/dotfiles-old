"
" .vimrc
"

filetype on
syntax on

" vim settings
set noautoindent
set   autoread              " reload files changed outside vim
set nobackup
set   expandtab
set   hidden                " buffers can exist without being shown
set   history=1000
set   ignorecase            " ignore case when searching
set   incsearch
set   number                " show current line number
set   relativenumber        " show relative line numbers for other lines
set   shiftwidth=4
set   smartcase             " don't ignore case when search pattern contains uppercase characters
set   smartindent
set   softtabstop=4
set noswapfile
set   tabstop=8
set   virtualedit=block

" key bindings
nnoremap <Tab>  ==

" vim-airline
let g:airline_powerline_fonts = 1

" vim plugins
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'    
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
call plug#end()

if has("autocmd")
    " auto-reload .vimrc on write 
    augroup vimrc
        autocmd!
        autocmd BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
        autocmd BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
    augroup END
endif

" VimR
if has("gui_vimr")
    color desert
endif
