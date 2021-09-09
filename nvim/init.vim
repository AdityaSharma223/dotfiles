"''''''''''''''''''''''''''''''''''''''''''''''''''''''"
"            _                              __ _       "
" _ ____   _(_)_ __ ___     ___ ___  _ __  / _(_) __ _ "
"| '_ \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |"
"| | | \ V /| | | | | | | | (_| (_) | | | |  _| | (_| |"
"|_| |_|\_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |"
"                                                |___/ "
"''''''''''''''''''''''''''''''''''''''''''''''''''''''"

" General Settings 
set encoding=UTF-8 nobackup nowb noswapfile nowritebackup splitbelow splitright 
set nocompatible mouse=a shell=zsh foldenable autoread number relativenumber noshowmode 
set backspace=eol,start,indent ignorecase smartcase hlsearch incsearch showmatch magic lazyredraw linespace=0
set secure termguicolors noerrorbells novisualbell t_Co=256 background=dark shiftwidth=4 tabstop=4 softtabstop=4
set autoindent smartindent autochdir spelllang=en_us nospell wrap laststatus=2 showcmd ruler cmdheight=1
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf wildmenu
set comments=sl:/*,mb:\ *,elx:\ */
set cursorline  
syntax enable


filetype on                 
filetype plugin on
filetype indent on

" Plugins 
call plug#begin('~/.vim/plugged')
" lightline 
Plug 'itchyny/lightline.vim'
" syntax
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-markdown'
Plug 'ap/vim-css-color' " displays colors in css file
" colorschemes 
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
" Goyo (a e s t h e t i c) 
Plug 'junegunn/goyo.vim'
" Auto pairing
Plug 'jiangmiao/auto-pairs' 
" Ranger integration 
Plug 'francoiscabrol/ranger.vim' " default key binding <leader>f
" it has a dependency tho :/ 
Plug 'rbgrouleff/bclose.vim'
" nvim starify (fancy start screen :p) 
Plug 'mhinz/vim-startify'
call plug#end() 


" Modifictions
let g:netrw_banner = 0 " removes the help from the :Lex command 
let g:lightline = {}
colorscheme gruvbox
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ }


" Transparent background
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


" Keybindings 
let mapleader=","
nnoremap <leader>w :w<CR>

" to copy the file contents
nnoremap <leader>c :!xclip -sel c %:p<CR>

" to launch a quick terminal
nnoremap <leader><leader>v :vsplit<bar> :vertical resize 40<bar> :terminal<CR> :startinsert<CR>

" to open a working tree (kinda) 
nnoremap <leader>l :Lex<bar> :vertical resize 30<CR>

" A E S T H E T I C 
nnoremap <leader>g :Goyo<bar> :so %<CR>

" to copy to both the clipboard and the primary selection 
vnoremap <C-c> "*y :let @+=@*<CR>

" to find a place holder <++>, delete it and go in insert mode
nnoremap <Space><Space> <Esc>/<++><Enter>c4l

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
nnoremap cw ciw
nnoremap dw diw

nnoremap <silent><Tab>       :bn<CR> 

nnoremap <silent> <leader>ev :e $MYVIMRC<CR>


" For running and executing C++ and Python and Rust code. 
augroup exe_code 
	autocmd! 

	"execute python code 
	autocmd FileType python nnoremap <buffer> <leader>r
				\ :w<bar> :sp<bar> :resize -5<bar> :term python3 %<CR> :startinsert<CR>

	"compile and run cpp code 
	autocmd FileType cpp nnoremap <buffer> <leader>r
			\ :w<bar> :sp<bar> :resize -5<bar> :term  g++ -std=c++20 -O2 -Wall % -o a && ./a<CR> :startinsert<CR>

	"build and run rust code 
	autocmd FileType rust nnoremap <buffer> <leader>r
			\ :sp<bar> :resize -5<bar> :term rustc % -o a && ./a<CR> :startinsert<CR>

augroup END

