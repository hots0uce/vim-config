syntax on
set backspace=2
set noswapfile
set clipboard=unnamed
set number
set hid

" tabbing
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Reset the leader char
let mapleader = ","

" Always show statusline
set laststatus=2
set t_Co=256

" custom mappings
imap jj <Esc>

nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>a :Ag<CR>
nmap \c :BD<CR>
nmap \x :cclose<CR>
nmap ∑  :BD<CR>

nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprev<CR>



" nmap <leader>p :CtrlP<CR>

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'easymotion/vim-easymotion'
" Plug 'PeterRincker/vim-argumentative'
Plug 'marijnh/tern_for_vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'mxw/vim-jsx'
Plug 'ruanyl/vim-fixmyjs'
Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
set rtp+=/usr/local/opt/fzf
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'docunext/closetag.vim'
Plug 'sheerun/vim-polyglot'
Plug 'qpkorr/vim-bufkill'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'w0rp/ale'

" Add plugins to &runtimepath
call plug#end()

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'minimalist'
let g:airline#extensions#ale#enabled = 1

nmap <Leader>fix :Fixmyjs<CR>

" ack should use ag
let g:ackprg = 'ag --vimgrep'

" git gutter symbols
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
