set bg=light
set hlsearch
set incsearch
set clipboard=unnamedplus
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

syntax on
set encoding=utf-8
set wildmode=longest,list,full

call plug#begin('~/.vim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/ymc-core/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

if executable('rg')
        let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertial resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
