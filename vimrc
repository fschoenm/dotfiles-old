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
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'    
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

" auto-reload .vimrc on write 
if has ('autocmd')
    augroup vimrc
        autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
        autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
    augroup END
endif
