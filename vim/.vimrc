"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"

set encoding=UTF-8 nobackup nowb noswapfile nowritebackup splitbelow splitright 
set nocompatible mouse=a shell=zsh foldenable autoread number relativenumber
set backspace=eol,start,indent ignorecase smartcase hlsearch incsearch showmatch magic lazyredraw linespace=0
set secure termguicolors noerrorbells novisualbell t_Co=256 background=dark shiftwidth=4 tabstop=4 softtabstop=4
set autoindent smartindent autochdir spelllang=en_us nospell wrap laststatus=2 showcmd ruler cmdheight=1
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf wildmenu
set comments=sl:/*,mb:\ *,elx:\ */
" set cursorline  
syntax enable

filetype on                 
filetype plugin on
filetype indent on

let g:netrw_banner = 0 " removes the help from the :Lex command 

" Keybindings 
let mapleader=","
nnoremap <leader>w :w<CR>

" to copy the file contents
nnoremap <leader>c :!xclip -sel c %:p<CR>

" to open a working tree (kinda) 
nnoremap <leader>l :Lex<bar> :vertical resize 30<CR>

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
				\ :w<bar> :term python3 %<CR>

	"compile and run cpp code 
	autocmd FileType cpp nnoremap <buffer> <leader>r
			\ :w<bar> :! g++ -std=c++20 -O2 -Wall % -o a<CR> :term ./a<CR>

	"build and run rust code 
	autocmd FileType rust nnoremap <buffer> <leader>r
			\ :sp<bar> :! rustc % -o a<CR> :term ./a<CR>

	" if it is a markdown file then i want it to display it in typora. 
	autocmd FileType markdown nnoremap <buffer> <leader>r
				\ :w<bar> :!typora %<CR>
augroup END

