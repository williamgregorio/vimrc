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
syntax on

" File types
autocmd FileType c,cpp setlocal smartindent cindent tabstop=3 shiftwidth=2 expandtab softtabstop=2
autocmd FileType php setlocal tabstop=3 shiftwidth=2 expandtab softtabstop=2
autocmd FileType php,javascript,html,css,python setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2
autocmd FileType go setlocal tabstop=3 shiftwidth=2 expandtab softtabstop=2
autocmd FileType liquid,django setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

" Plugin man
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'honza/vim-snippets'
Plug 'neoclide/coc-snippets'

" Auto pairs for brackets and quotes..
Plug 'jiangmiao/auto-pairs'

" Syntax highlighting
Plug 'fatih/vim-go'
Plug 'nathangrigg/vim-beancount'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'vim-python/python-syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'morhetz/gruvbox'

call plug#end()

" Gruvbox theme settings
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
 
" Tab support coc
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? coc#pum#confirm() : "\<CR>"

" Use Coc for language-specific LSP
let g:coc_global_extensions = ['coc-go','coc-pyright','coc-json','coc-html','coc-tsserver','coc-phpls','coc-snippets']

" Custom coc's floating window and menu colors for Gruvbox
highlight CocFloating guibg=#282828 guifg=#ebdbb2
highlight CocMenuSel guibg=#458588 guifg=#ebdbb2
highlight Pmenu guibg=#282828 guifg=#ebdbb2
highlight PmenuSel guibg=#458588 guifg=#282828
highlight PmenuSbar guibg=#3c3836
highlight PmenuThumb guibg=#504945

" Auto auto-pairs
let g:auto_pairs_map = 2

" Keybindings for coc
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <leader>rn :call CocAction('rename')<CR>

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


