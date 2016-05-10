syntax on
set background=dark
set number
set backspace=2

" tabbing
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

" Always show statusline
set laststatus=2

" custom mappings
imap jj <Esc>
nmap ]l :lnext<CR>
nmap [l :lprevious<CR>

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'helino/vim-json'
Plug 'marijnh/tern_for_vim'
Plug 'mhinz/vim-signify'
Plug 'pangloss/vim-javascript'
" Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add plugins to &runtimepath
call plug#end()


" vim-js
let g:javascript_enable_domhtmlcss = 1

" airline
let g:airline_powerline_fonts = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
