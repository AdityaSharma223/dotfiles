vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>c", ":!xclip -sel c %<CR>")
vim.keymap.set("n", "yw", "yiw")
vim.keymap.set("n", "dw", "diw")
vim.keymap.set("n", "cw", "ciw")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "D", '"_D')
vim.keymap.set("n", "X", '"_X')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- according to file type
local cmd = vim.cmd
cmd [[ 
    augroup exe_code
        autocmd! 

        autocmd FileType python nnoremap  <leader>r
                                \ :w<bar> :sp<bar> :resize -5<bar> :term python %<CR> :startinsert<CR> 

        autocmd FileType javascript nnoremap  <leader>r
				\ :w<bar> :sp<bar> :resize -5<bar> :term node %<CR> :startinsert<CR>
                                
        autocmd FileType cpp nnoremap  <leader>r
			\ :w<bar> :sp<bar> :resize -5<bar> :term  g++ -std=c++20 -O2 -Wall % -o a && ./a<CR> :startinsert<CR>

        autocmd FileType html nnoremap  <leader>r
				\ :w<bar> :!brave %<CR> 

        autocmd FileType nroff nnoremap  <leader>r
				\ :w<bar> :!groff -ms % -T pdf > za.pdf && zathura za.pdf<CR>

    augroup end 
    ]]
