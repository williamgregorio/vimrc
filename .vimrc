inoremap <C-a> <Esc>

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smartindent
set autoindent

set wrap
set relativenumber
set number
set mouse=a

set clipboard=unnamedplus

filetype plugin indent on

" C
autocmd FileType c,cpp setlocal smartindent
autocmd FileType c,cpp setlocal cindent
autocmd FileType c,cpp setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType c,cpp setlocal softtabstop=2
autocmd FileType c,cpp setlocal indentkeys-=0#

" PHP
autocmd FileType php setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

" JavaScript
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

" HTML
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

" CSS
autocmd FileType css setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

" Python
autocmd FileType python setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Move to the left split
nnoremap <C-h> :wincmd h<CR>
" Move to the down split
nnoremap <C-j> :wincmd j<CR>
" Move to the up split
nnoremap <C-k> :wincmd k<CR>
" Move to the right split
nnoremap <C-l> :wincmd l<CR>


" Keybindings for fzf file search
nnoremap <C-p> :Files<CR>          
nnoremap <leader>gs :Gstatus<CR>   
nnoremap <leader>gc :Gcommit<CR>   
nnoremap <leader>gb :Gblame<CR>    
nnoremap <leader>gl :Glog<CR>   
