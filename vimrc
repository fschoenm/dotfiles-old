"
" .vimrc
"

" vim settings
set noautoindent
set nobackup
set   expandtab
set   ignorecase
set   incsearch
set   shiftwidth=4
set   softtabstop=4
set   tabstop=8
set   virtualedit=block

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

" auto-reload .vimrc on write 
if has ('autocmd')
    augroup vimrc
        autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
        autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
    augroup END
endif

" VimR
if has("gui_vimr")
    color darkblue
endif

" key bindings
nnoremap <Tab>  ==
