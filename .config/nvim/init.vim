"''''''''''''''''''''''''''''''''''''''''''''''''''''''"
"            _                              __ _       "
" _ ____   _(_)_ __ ___     ___ ___  _ __  / _(_) __ _ "
"| '_ \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |"
"| | | \ V /| | | | | | | | (_| (_) | | | |  _| | (_| |"
"|_| |_|\_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |"
"                                                |___/ "
"''''''''''''''''''''''''''''''''''''''''''''''''''''''"
" Author: Aditya Sharma 
" Date: 20th September 2021
" Github: github.com/adityasharma223  

" General Settings 
set encoding=UTF-8 nobackup nowb noswapfile nowritebackup splitbelow splitright mat=0
set nocompatible mouse=a shell=fish foldenable autoread number relativenumber noshowmode 
set backspace=eol,start,indent ignorecase smartcase hlsearch incsearch showmatch magic lazyredraw linespace=0
set secure noerrorbells novisualbell t_Co=256 shiftwidth=4 tabstop=4 softtabstop=4
set autoindent smartindent autochdir spelllang=en_us nospell wrap laststatus=2 showcmd ruler cmdheight=1
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf wildmenu
set comments=sl:/*,mb:\ *,elx:\ */
set cursorline  
syntax enable
set termguicolors


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
Plug 'jiangmiao/auto-pairs' 
Plug 'tpope/vim-commentary'
" startify replacement
Plug 'glepnir/dashboard-nvim'
" fuzzy find
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" NERDTree
Plug 'preservim/nerdtree'
" colorschemes 
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'jaredgorski/spacecamp'
" Vim Devicons
Plug 'ryanoasis/vim-devicons'
" Ranger integration 
Plug 'francoiscabrol/ranger.vim' " default key binding <leader>f
" it has a dependency tho :/ 
Plug 'rbgrouleff/bclose.vim'
" Practice
Plug 'ThePrimeagen/vim-be-good'
call plug#end() 


" Modifictions
" let g:dashboard_custom_header=[
"     \'',
"     \'⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
"     \'⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕',
"     \'⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕',
"     \'⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕',
"     \'⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑',
"     \'⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐',
"     \'⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐',
"     \'⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔',
"     \'⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕',
"     \'⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕',
"     \'⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕',
"     \'⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕',
"     \'⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁',
"     \'⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿',
"     \'',
"     \]
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\]
let g:lightline = {}
let g:dashboard_default_executive ='fzf'
" colorscheme spacecamp
colorscheme srcery
let g:aqua_transparency = 1
let g:aqua_bold = 1
set background=dark
let g:webdevicons_enable_startify = 1
let g:lightline = {
	\ 'component_function': {
	\   'filetype': 'MyFiletype',
	\   'fileformat': 'MyFileformat',
	\ },
	\ 'colorscheme': 'srcery'
	\ }

" to enable devicons in lightline
function! MyFiletype()
return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
function! MyFileformat()
return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction


" Transparent background
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


" Keybindings 
let mapleader=","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Fuzzy find 
nnoremap <leader>F :Files<CR>

" to copy the file contents
nnoremap <leader>c :!xclip -sel c %:p<CR>

" to comment or uncomment 
nnoremap <leader>gc :norm gcc<CR>

" to launch a quick terminal
nnoremap <leader><leader>v :vsplit<bar> :vertical resize 45<bar> :terminal<CR> :startinsert<CR>

" to open a working tree (kinda) 
nnoremap <leader>l :NERDTree<CR>

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

nnoremap <silent> <leader>ev :tabe $MYVIMRC<CR>


" For running and executing according to the file type. 
augroup exe_code 
	autocmd! 

	"execute python code 
	autocmd FileType python nnoremap <buffer> <leader>r
				\ :w<bar> :sp<bar> :resize -5<bar> :term python %<CR> :startinsert<CR>


	"execute js code 
	autocmd FileType javascript nnoremap <buffer> <leader>r
				\ :w<bar> :sp<bar> :resize -5<bar> :term node %<CR> :startinsert<CR>

	"opening a python shell for use
	autocmd FileType python nnoremap <buffer> <leader>sh
				\ :w<bar> :sp<bar> :resize -5<bar> :term python <CR> :startinsert<CR>

	"compile and run cpp code 
	autocmd FileType cpp nnoremap <buffer> <leader>r
			\ :w<bar> :sp<bar> :resize -5<bar> :term  g++ -std=c++20 -O2 -Wall % -o a && ./a<CR> :startinsert<CR>

	"build and run rust code 
	autocmd FileType rust nnoremap <buffer> <leader>r
			\ :sp<bar> :resize -5<bar> :term rustc % -o a && ./a<CR> :startinsert<CR>

	" if it is a markdown file then i want it to display it in typora. 
	autocmd FileType markdown nnoremap <buffer> <leader>r
				\ :w<bar> :!typora %<CR> " make sure u have typora installed lol. 
	
	" if it is a html file it will open it in the browser
	autocmd FileType html nnoremap <buffer> <leader>r
				\ :w<bar> :!brave %<CR> " make sure u have brave-browser or change it with any other browser

	" trying to run an executable file
	autocmd FileType sh nnoremap <buffer> <leader>r
				\ :w<bar> :sp<bar> :resize -5<bar> :term ./%<CR>  :startinsert<CR>

	" trying to run and compile a groff
	autocmd FileType nroff nnoremap <buffer> <leader>r
				\ :w<bar> :!groff -ms % -T pdf > za.pdf && zathura za.pdf<CR>
augroup END

highlight Comment gui=italic
