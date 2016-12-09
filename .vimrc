syntax on
set background=dark
set number
set backspace=2
set noswapfile
set clipboard=unnamed

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
nmap ]l :lnext<CR>
nmap [l :lprevious<CR>
nmap <leader>p :CtrlP<CR>

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'easymotion/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
" Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'helino/vim-json'
Plug 'marijnh/tern_for_vim'
Plug 'mhinz/vim-signify'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'burnettk/vim-angular'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'editorconfig/editorconfig-vim'

" Add plugins to &runtimepath
call plug#end()


" vim-js
let g:javascript_enable_domhtmlcss = 1

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'bubblegum'

" buffergator
set hidden
nmap <leader>t :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]


" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.(git)|test\-results|app\/vendor|node_modules|coverage|app\/fonts|app\/img|dist|release$'
\}

" vim-angular

let g:angular_source_directory = 'app'
let g:angular_test_directory = 'test/unit'
let g:angular_filename_convention = 'camelcased'

