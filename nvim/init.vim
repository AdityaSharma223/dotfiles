" General Settings 
set encoding=UTF-8 nobackup nowb noswapfile nowritebackup cursorline splitbelow splitright 
set nocompatible mouse=a shell=zsh foldenable autoread number relativenumber noshowmode 
set backspace=eol,start,indent ignorecase smartcase hlsearch incsearch showmatch magic lazyredraw linespace=0
set secure termguicolors noerrorbells novisualbell t_Co=256 background=dark shiftwidth=4 tabstop=4 softtabstop=4
set autoindent smartindent autochdir spelllang=en_us nospell wrap laststatus=2 showcmd ruler cmdheight=1
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf wildmenu
set comments=sl:/*,mb:\ *,elx:\ */
syntax enable


filetype on                 
filetype plugin on
filetype indent on

" Plugins 
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    " syntax
    Plug 'tpope/vim-markdown'
    Plug 'ap/vim-css-color' " displays colors in css file 
    " colorschemes 
    Plug 'morhetz/gruvbox'
    Plug 'herrbischoff/cobalt2.vim'
    Plug 'arcticicestudio/nord-vim'
    " colorscheme for lighline
    Plug 'shinchu/lightline-gruvbox.vim'
	" Goyo (a e s t h e t i c) 
	Plug 'junegunn/goyo.vim'

call plug#end() 

let g:netrw_banner = 0 " removes the help from the :Lex command 
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
colorscheme gruvbox

" Keybindings 
let mapleader=","
nnoremap <leader>w :w<CR>
nnoremap <leader>r :!python3 %:p
nnoremap <leader>rc :!g++ a.cpp && ./a.out
nnoremap <leader>c :!xclip -sel c %:p
nnoremap <leader><leader>v :vertical terminal<CR>
nnoremap <leader><leader>s :terminal<CR>
nnoremap <leader>l :Lex<bar> :vertical resize 30<CR>
nnoremap <leader>g :Goyo<CR>

nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap Y y$
nnoremap yw yiw

nnoremap <silent><Tab>       :bn<CR> 

nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" Transparent background
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

