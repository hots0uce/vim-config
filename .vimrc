syntax on
set noswapfile
autocmd BufWritePre * :%s/\s\+$//e
set backspace=2
set modeline
set modelines=5
set et
set ts=2
set sw=2
set number

colorscheme desert
hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white
nnoremap H :set cursorline!<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'groenewege/vim-less'
Plugin 'othree/yajs.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <C-l> :NERDTreeToggle<CR>
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

imap jj <ESC>

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]\.(git)|test\-results|app\/vendor|node_modules|coverage|app\/fonts|app\/img$'
      \}


nmap <leader>bq :bp <BAR> bd #<cr>
