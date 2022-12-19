set nu rnu encoding=UTF-8 nobackup shell=fish nowb noswapfile nowritebackup splitbelow splitright    
set backspace=eol,start,indent ignorecase smartcase t_Co=256 autoindent autochdir smartindent showmatch
set wildignore+=*/tmp/*,*/.cache/*,*/.git/*,*.so,*~,*.pyc,*.bak,*.class,*.swp,*.zip,*.pdf wildmenu
set comments=sl:/*,mb:\ *,elx:\ */ hlsearch incsearch ruler cmdheight=1 wrap nospell secure spelllang=en_us
set shiftwidth=4 tabstop=4 softtabstop=4 

syntax enable
filetype on                 
filetype plugin on
filetype indent on

let mapleader=","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
vnoremap <C-c> "*y :let @+=@*<CR>
nnoremap <leader>l :Lex<bar> :vertical resize -40<CR> 

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
