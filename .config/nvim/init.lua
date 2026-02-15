vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.background = "dark" -- or "light" for light mode
-- vim.o.background = "light" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd([[
    augroup show_tabline
    autocmd!
    autocmd FileType dashboard set showtabline=0
    autocmd WinLeave <buffer> set showtabline=2
    augroup end
]])

require("adupadu.options")
require("adupadu.keymaps")
require("adupadu.lazy")
-- require("adupadu.plugin_config")

-- function ColorMyPencils(color)
--     color = color or "gruvbox"
--     -- color = color or "nordic"
--     -- color = color or "monokai-pro-spectrum"
--     vim.cmd.colorscheme(color)
--
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- ColorMyPencils()


-- alpha

-- https://github.com/shvedes/dotfiles

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    -- "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@@@.   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@& @@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@ @@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@ @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@ @@@@@..@&   ,   %@@@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@ @@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@ @@@@#@@@@@@@@@@@@@ /@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@ @@@@@@( %@@ @@@@@@@ @@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@ @@@@@@@@@ @@@( @@@@@% @@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@.  @@@@@@@@   @@@@@* @@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@@@@@@@@@ (@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@",
    -- "@@@@@@@@@@@@@. .%@@@@@% @@@@@% .  @@@/*    &( &@@@@@@@@",
    -- "@@@@@@@@@   @@@@@@@@&  @@@@@@@@@@& @@@@@@@@@@@@ @@@@@@@",
    -- "@@@@@@@@ @@@@@@@@@@@@@@  @@@@@@& @@@@@@@@@@@@@@@ ,@@@@@",
    -- "@@@@@@@ @@@@@@@ @@ ,@@@@@  @@@ @@@@@@ @@@ #@@@@@@@@& @@",
    -- "@@@@@@ @@@@@@ &@@@ @@@@@@@*.@@,.@@@@@@& @@ @@@@@@@@ @@@",
    -- "@@@@@@# @@@@@@ @ @@@@@@@@ .@@@@ @@@@@@@&,. ,@@@@@@@ @@@",
    -- "@@@@@@@@, @@@@@@@@@@@@@@ @@@@@@@@ #@@@@@@@@@& @@@@@@ @@",
    -- "@@@@@@@@@@@  @@@@@@@@@@ /@@@@@@@@@/ %@@@@&, @ &@@@@@ @@",
    -- "@@@@@@@*   @@@@@@@@% . /@@@@@@@@@@@@@@@@@@@@@@ @@@@@ @@",
    -- "@@@.   @@@@@@@@@ (@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@.(@@",
    -- "@@ @@@@@@@@*  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@% @@# @@@",
    -- "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  & /@@@@",
    -- "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
    -- "                                                     ",

    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
    "                                                     ",

    -- "                                                     ",
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣋⣥⣴⣶⣶⣶⣤⣌⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣰⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⣿⣿⣿⣿⣿⣿⣿⣿⣻⡿⠿⠛⣛⣛⣛⣹⣿⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠪⣿⠿⢛⣋⣭⠹⣿⣿⣿⡶⠞⠛⣛⡛⢻⣿⣿⡇⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠐⢹⠞⣛⠋⢩⡄⠘⢿⣿⣇⠳⠄⠸⠛⣸⣿⣿⣇⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⣿⣧⣯⣁⣨⣴⣷⠌⣻⣿⣿⣿⣿⣿⣿⣿⣿⡇⠺⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠐⡁⢹⣿⣿⣿⣿⣿⣿⠁⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡐⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠐⡏⠸⣿⣿⣿⣿⣿⣿⡁⣉⣿⣿⣿⣿⣿⣿⣿⣿⠇⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡐⠀⢿⣿⣿⣿⣿⣿⡿⠛⠘⣿⣿⣿⣿⣿⣿⡿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡰⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢃⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠻⢿⣿⣿⣿⣿⣿⣿⠿⢋⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⡈⣍⡉⠩⠅⠀⣰⣿⡄⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⡀⠀⢀⡁⠴⠀⣀⣀⣴⣿⣿⡧⠑⣄⠲⣭⣭⣭⣙⡛⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⢋⠅⠀⢠⡾⠇⣴⣌⣙⠳⠶⠿⠿⠿⣛⣋⠀⠀⠹⣧⡀⠙⠙⠛⢹⠗⡰⠆⢉⠻⣿⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠐⠀⠀⠠⢠⡇⢀⡈⠡⣹⣿⣿⣿⡆⠀⠀⢻⣿⣿⣷⠀⠹⡀⠀⠀⢉⣠⡾⢁⣠⣾⣷⡜⢿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⠋⠀⠈⠻⢧⠀⣀⢠⡿⢃⣺⣯⣷⣦⣉⡛⣿⠇⡴⢶⡘⡟⢋⣤⣾⣶⣬⣉⣉⣩⣤⣾⣿⣿⣿⣿⣿⡌⢿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⠃⠀⠈⣆⣤⣁⣉⣉⣩⣶⣿⣿⣿⣿⣿⣿⣇⢹⣤⡄⠀⣴⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢸⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⠃⠰⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠸⣿⡇⠀⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠻⣿⣿⣿⣿⡀⣿⣿',
    -- '    ⣿⣿⣿⣿⠁⠀⣶⣟⣿⣿⣿⣿⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⡿⠇⠀⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⣇⢹⣿',
    -- '    ⣿⣿⣿⠁⠄⢀⢿⣿⢿⣿⣿⠸⠀⣩⣾⣿⣿⣿⣿⣿⣿⣿⣿⠀⣥⣘⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢐⣿⣿⣿⣿⣿⠸⣿',
    -- '    ⣿⣿⠃⠄⠀⢸⠿⠃⣿⣿⣿⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣉⣭⣭⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣾⣿⣿⣿⣿⣿⡆⣿',
    -- '    ⣿⠇⣄⠈⠀⣺⣊⣸⣿⣿⣿⡏⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣸⣿⣿⣿⣿⣿⣿⡇⣿',
    -- '    ⡿⢰⣿⡘⠀⣿⣿⣿⣿⣿⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣷⢸',
    -- '    ⢇⡟⢡⠁⠀⠙⣿⣿⣿⣿⣿⠃⠈⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢻⣿⣿⣿⣿⣿⣿⣿⢸',
    -- '    ⣤⣶⣾⣤⣤⣤⣿⣿⣿⣿⣿⣦⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣤⣽⣿⣿⣿⣿⣿⣯⣤',

    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⣤⣤⣤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠶⣻⠝⠋⠠⠔⠛⠁⡀⠀⠈⢉⡙⠓⠶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢋⣴⡮⠓⠋⠀⠀⢄⠀⠀⠉⠢⣄⠀⠈⠁⠀⡀⠙⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢁⣔⠟⠁⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⠈⢦⡀⠀⠀⠘⢯⢢⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⢳⣦⡀⠀⠀⢯⠀⠈⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠆⡄⢠⢧⠀⣸⠀⠀⠀⠀⠀⠀⠀⢰⠀⣄⠀⠀⠀⠀⢳⡈⢶⡦⣿⣷⣿⢉⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣯⣿⣁⡟⠈⠣⡇⠀⠀⢸⠀⠀⠀⠀⢸⡄⠘⡄⠀⠀⠀⠈⢿⢾⣿⣾⢾⠙⠻⣾⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⣮⠇⢙⠷⢄⣸⡗⡆⠀⢘⠀⠀⠀⠀⢸⠧⠀⢣⠀⠀⠀⡀⡸⣿⣿⠘⡎⢆⠈⢳⣽⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⢻⢷⣄⠀⠀⠀⠀⠀⠀⣾⣳⡿⡸⢀⣿⠀⠀⢸⠙⠁⠀⠼⠀⠀⠀⠀⢸⣇⠠⡼⡤⠴⢋⣽⣱⢿⣧⠀⢳⠈⢧⠀⢻⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⢀⡿⣠⡣⠃⣿⠃⠀⠀⠀⠀⣸⣳⣿⠇⣇⢸⣿⢸⣠⠼⠀⠀⠀⡇⠀⡀⠉⠒⣾⢾⣆⢟⣳⡶⠓⠶⠿⢼⣿⣇⠈⡇⠘⢆⠈⢿⡘⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠈⢷⣍⣤⡶⣿⡄⠀⠀⠀⢠⣿⠃⣿⠀⡏⢸⣿⣿⠀⢸⠀⠀⢠⡗⢀⠇⠀⢠⡟⠀⠻⣾⣿⠀⠀⠀⠀⡏⣿⣿⡀⢹⡀⠈⢦⠈⢷⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢁⣤⣄⠁⠀⠀⠀⣼⡏⢰⣟⠀⣇⠘⣿⣿⣾⣾⣆⢀⣾⠃⣼⢠⣶⣿⣭⣷⣶⣾⣿⣤⠀⠀⠀⡇⡯⣍⣧⠀⣷⠄⠈⢳⡀⢻⡁⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⣿⡿⠀⠀⠀⠀⡿⢀⣾⣧⠀⡗⡄⢿⣿⡙⣽⣿⣟⠛⠚⠛⠙⠉⢹⣿⣿⣦⠀⢸⡿⠀⠀⠀⢰⡯⣌⢻⡀⢸⢠⢰⡄⠹⡷⣿⣦⣤⠤⣶⡇⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⣇⣾⣿⢸⢠⣧⢧⠘⣿⡇⠸⣿⢿⡆⠀⠀⠀⠀⠘⣯⠇⣿⠂⣸⢰⠀⠀⢀⣸⡧⣊⣼⡇⢸⣼⣸⣷⢣⢻⣄⠉⠙⠛⠉⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣳⣤⣴⣿⣏⣿⣾⢸⣿⡘⣧⣘⢿⣀⡙⣞⠁⠀⠀⠀⠀⢀⡬⢀⣉⢠⣧⡏⠀⠀⡎⣿⣿⣿⣿⠃⣸⡏⣿⣿⡎⢿⡘⡆⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⣠⣼⣿⣿⣿⣼⣿⣧⢿⣿⣿⣯⡻⠟⠀⠀⠀⠀⠀⠐⢯⠣⡽⢟⣽⠀⠀⢘⡇⣿⣿⣿⡟⣴⣿⣷⣿⣿⣧⣿⣷⡽⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣼⣹⣿⣇⣸⣿⣿⣿⣻⣚⣿⡿⣿⣿⣦⣤⣀⡉⠃⠀⢀⣀⣤⡶⠛⡏⠀⢀⣼⢸⣿⣿⣿⣿⣿⣿⣿⢋⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠒⠒⠒⢭⢻⣽⣿⣿⣿⣿⣿⣿⢿⠿⣿⡏⠀⡼⠁⣀⣾⣿⣿⣿⣿⡿⣿⣿⣟⡻⣿⣿⡿⠣⠟⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⢿⣯⡽⠿⠛⠋⣵⢟⣋⣿⣶⣞⣤⣾⣿⣿⡟⢉⡿⢋⠻⢯⡉⢻⡟⢿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡞⣿⣆⡀⠀⡼⡏⠉⠚⠭⢉⣠⠬⠛⠛⢁⡴⣫⠖⠁⠀⠀⣩⠟⠁⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠈⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣽⣿⣿⣾⠳⡙⣦⡤⠜⠊⠁⠀⣀⡴⠯⠾⠗⠒⠒⠛⠛⠛⠛⠛⠓⠿⣦⡀         ',
    -- '    ⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣻⣿⣿⠔⢪⠓⠬⢍⠉⣩⣽⢻⣤⣶⣦⠀⠀⠀⢀⣀⣤⣴⣾⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣾⡏⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣯⣿⣿⠀⠀⣇⠀⣠⠎⠁⢹⡎⡟⡏⣷⣶⠿⠛⡟⠛⠛⣫⠟⠉⢿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣷⠈⢷⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣾⣷⡀⣀⣀⣷⡅⠀⠀⠈⣷⢳⡇⣿⠀⠀⣸⠁⢠⡾⣟⣛⣻⣟⡿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢯⢻⣏⡵⠿⠿⢤⣄⠀⢀⣿⢸⣹⣿⣀⣴⣿⣴⣿⣛⠋⠉⠉⡉⠛⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡎⣿⣥⣶⠖⢉⣿⡿⣿⣿⡿⣿⣟⠿⠿⣿⣿⣿⡯⠻⣿⣿⣿⣷⡽⣿⡗⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⠀⠀⠀⠀⠀⠸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡘⣿⣩⠶⣛⣋⡽⠿⣷⢬⣙⣻⣿⣿⣿⣯⣛⠳⣤⣬⡻⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀',
    -- '    ⠀⣿⣛⣻⣿⡿⠿⠟⠗⠶⠶⠶⠶⠤⠤⢤⠤⡤⢤⣤⣤⣤⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣣⢹⣷⣶⣿⣿⣦⣴⣟⣛⣯⣤⣿⣿⣿⣿⣿⣷⣌⣿⣿⣿⣿⣿⣿⣿⣤⣤⣤⣤⣤⣤⣄',
    -- '    ⠀⠉⠙⠛⠛⠛⠛⠛⠻⠿⠿⠿⠷⠶⠶⢶⣶⣶⣶⣶⣤⣤⣤⣤⣤⣥⣬⣭⣭⣉⣩⣍⣙⣏⣉⣏⣽⣶⣶⣶⣤⣤⣬⣤⣤⣾⣿⠶⠾⠿⠿⠿⠿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠃',
    -- '    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠛⠛⠛⠛⠛⠛⠋⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',

    -- '    ⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣏⠿⡿⢹⢖⡰⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⠂⠀⡀⠄⠀⡀⠀⡀⡀⠀⠀⠀⠀⠀⢐⠜⠅⢮⠹⣏⠟⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⡿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣝⢿⣿⣿⣿⣿⣿⣿⣯⣵⢏⡳⢩⡆⢿⠁⠀⠀⠀⠀⠀⠀⠀⢠⠂⢠⣿⣏⢤⣾⣵⣶⣟⠀⠠⠊⠀⠀⠀⠀⢀⠄⠟⠊⠈⠢⣙⢔⣭⡿⣯⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⠟⢫⣴',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠙⠻⣿⢿⣏⢳⣟⣮⡯⢔⡉⠞⠇⢇⠀⠀⠀⠀⠀⠀⠀⣾⡇⣾⣿⢣⣿⣯⣷⣯⡥⣂⡜⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢼⠗⡽⣹⡷⣟⣿⣿⡿⣿⣻⢿⡿⡿⣁⣴⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⣶⣈⣁⠹⢏⢱⡎⣹⢆⡆⡸⠁⠸⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⠏⠀⠀⠀⠀⠀⠆⠁⡸⠀⠰⠁⡉⢆⢰⠏⣸⡿⢷⡿⣱⣏⡏⢁⣾⣿⣿⣿⣿',
    -- '    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣷⢯⡿⣟⣶⡤⣅⠣⡑⠀⠄⢢⠑⠄⠀⠀⠀⠀⠈⢦⣻⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣉⠄⠀⠀⠀⠀⡌⠀⠈⡀⠀⠁⡠⠂⡍⡮⣚⠵⡹⣯⣛⠇⠭⠾⢿⡻⢹⣿⣿⣿',
    -- '    ⣿⣿⠟⣿⣿⣿⣿⣿⣿⡜⢋⡽⣯⡟⡷⣎⠴⢁⠃⠙⠅⢔⡠⣄⠀⠄⠀⠀⠀⠀⠈⠻⣹⣿⣿⣿⣿⣿⣿⣿⣹⠿⠧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠕⣮⠱⣬⢻⠺⢁⡤⣔⡞⡾⣏⣴⣿⣿⣿⣿',
    -- '    ⣽⠻⢼⣿⣿⣿⣿⣿⣷⢷⣽⣛⣇⠼⡳⢌⠲⡁⠀⠀⠸⠃⠐⠠⠈⠡⠐⠀⠀⠀⠀⠈⡟⢾⣿⣯⣿⣽⣟⡿⠟⠋⠁⢀⠒⠀⠁⠀⠀⠀⠀⠀⣀⢤⣤⠑⣢⠫⡚⢅⢎⠳⡜⢦⡹⣝⡻⣞⣷⣻⣮⠖',
    -- '    ⣿⣿⣮⣿⣿⣿⣿⡿⣿⢘⡗⣳⣾⡠⢹⠎⡱⠀⣄⢲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⢀⠀⢹⣯⡿⣞⡎⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠌⠁⠌⠁⠀⡈⠔⠈⡜⡩⢎⡱⡘⢆⡳⢎⢷⣛⣾⢓⡅⠀',
    -- '    ⣿⣿⣿⣿⣿⣟⣿⣽⣿⣾⡿⣖⣮⡙⣇⠋⠔⠡⠀⠀⠡⡂⠀⠀⠀⠀⠀⠀⣖⣌⣄⣕⣸⣛⡹⣿⣿⣿⡷⢾⢡⣐⣴⣄⠀⠀⠀⠀⠀⠀⠀⠀⠢⠀⠀⠀⠐⠀⠔⡡⢆⡱⣉⢎⡱⠏⣺⢗⠴⠊⠀⠀',
    -- '    ⣿⣻⢾⡙⣿⣯⢿⡾⣽⣯⢽⡛⢮⡕⡄⢊⠄⠀⠈⠀⢀⠈⡂⠈⠤⡀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⡀⠀⡀⠀⠀⠀⠀⠀⠈⠐⢁⣢⠱⢌⡪⣐⢙⣨⢤⡔⢶⡻⢹',
    -- '    ⣿⣁⣀⠿⡱⠿⣏⣹⠿⣱⢇⡹⡆⢶⠸⡀⠀⠀⠀⠀⠀⠱⠀⡀⠀⠁⠀⢀⡿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠰⠀⣰⡀⠀⠀⠀⢰⠆⠉⠁⠀⠀⡰⠎⡰⢇⡸⣎⡹⣎⣷⢿',
    -- '    ⣿⣿⣻⣳⣑⣃⡈⠩⠺⣱⢎⡵⣉⠆⠳⣈⠄⠀⠀⠀⠀⣠⣡⠀⠬⠀⠀⢾⣭⢻⣾⣽⣿⣿⣿⣿⣿⣿⡿⣿⣿⣏⣿⡞⣱⠆⠀⠀⠀⠀⣠⣄⠠⠤⢄⠠⠊⠂⠀⢈⠒⡡⢂⠱⣘⡬⠳⣍⣷⡻⢾⣿',
    -- '    ⣾⣭⣽⣓⡯⠞⠹⣚⠶⠡⠘⠀⢠⠚⠆⠀⠀⠀⠀⠀⢺⣿⣿⡥⣤⣆⣰⢟⣳⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡝⢯⢽⡾⣽⣤⣔⣤⣼⣿⣿⠇⠀⠀⠀⠀⠀⠀⡄⠡⢄⡁⢏⣈⣀⠩⡕⣧⣛⣯⣟',
    -- '    ⣿⣿⣿⣿⣿⣟⠿⣵⡺⣧⢼⢮⢢⣍⠐⠀⠄⠀⠀⠀⠀⠈⠓⠩⣛⢿⠿⡊⠄⠀⠛⠩⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠂⡳⣿⢞⡻⣿⣟⡟⠃⠁⠀⠀⠀⠀⠀⡠⠁⣐⣙⢂⣉⠡⣒⠭⣛⢼⡯⡻⣷⢾',
    -- '    ⣿⣿⣿⣿⣷⡿⣾⢄⡉⠙⣟⢦⣃⡁⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣷⣠⣤⠻⠋⠉⠉⠀⠀⡀⠀⠀⠂⠀⠀⠀⠚⠈⠁⠀⠈⠡⢌⠲⡡⣮⡳⡫⢈⣽⢺⡽',
    -- '    ⣿⣿⣿⣿⣷⢿⣟⢼⡍⢢⢜⡑⠌⡚⣅⠢⠀⠀⠀⠀⠀⠀⠀⠀⠦⠴⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⠂⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠰⢈⠱⠕⡡⣚⡕⣋⠶⡹⡜',
    -- '    ⣿⣿⣿⡿⣞⡟⢮⢣⣜⠢⠇⢎⡧⡙⠾⡤⠁⠀⠀⠀⠀⠀⠀⠀⠁⠐⠀⠀⡀⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢿⣷⡟⠛⠛⠿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠅⠂⠀⠀⠀⠁⠈⠀⠋⢣⡘⡔⢢⠕⡩',
    -- '    ⣿⣿⣿⣹⢷⠾⣰⡶⢀⢁⠾⣸⡇⢱⠆⡸⠀⢀⠀⠀⠀⠀⠀⠀⠶⢀⠀⢰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⢀⡀⠀⠉⢆⠀⠀⠀⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠰⢀⢱⡈⢁⡈⢁',
    -- '    ⣿⣯⣟⡯⠟⣈⣥⢴⣛⠬⡓⠴⡈⣇⠎⡔⠁⠀⠁⠒⡀⠀⠀⠀⢤⣄⣹⣿⣿⠿⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠈⠰⣈⠐⡈⢆',
    -- '    ⣩⣤⣴⣶⣾⣿⡼⡧⣿⡘⢥⢋⠴⢨⠳⠌⡑⠂⠀⠀⠀⠀⠄⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⠀⠀⠀⠂⠀⠊',
    -- '    ⣿⡿⣟⣯⣯⣟⠽⣳⠎⡙⢦⡉⢎⠐⠂⠄⠀⠀⠀⠀⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠐⠀⠀⠀⠀',

    -- '',
    -- '',
    -- '',
    -- '⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
    -- '⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕',
    -- '⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕',
    -- '⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕',
    -- '⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑',
    -- '⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐',
    -- '⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐',
    -- '⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁ ⣼⣿⣿⡇⢔',
    -- '⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕',
    -- '⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕',
    -- '⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕',
    -- '⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕',
    -- '⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁',
    -- '⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿',
    -- '',
    -- '            adupadu           ',
    -- '',
    -- '',
    -- "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡴⠶⠛⠛⠋⠉⠙⠛⠓⠶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠀⢠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡀⠀⠀⠀⡠⠀⠀⠀⠀⢄⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⢻⡀⠀⠀⠀⠀⢠⠃⠀⣠⣦⣤⡀⠘⡄⠀⡌⠀⣠⣦⣤⡀⠀⢂⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠘⣷⡀⠀⠀⠀⡆⠀⣼⣿⣉⣿⣷⠀⢠⢰⡀⢸⣿⣏⣻⣿⠀⠈⡀⠀⠀⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠹⣥⠀⠀⠀⡇⠀⢿⣿⣿⣿⣿⠀⠸⢸⠆⢸⣿⣿⣿⣿⠀⠀⠃⠀⠀⠀⡼⠁⠀⠀⠀⠀⠀⠀⠀",
    -- " ⡎⠉⠳⣦⡀⠀⠀⠀⠀⠹⣧⡀⠀⠰⠀⠘⡿⣿⡿⡇⢀⠃⠀⢆⠈⠻⣿⣿⡋⠁⡘⠀⠄⢀⡾⠁⠀⠀⠀⠀⣠⠖⠉⢳",
    -- " ⣇⠀⠀⠈⠙⠲⣄⡀⠀⠀⠘⣿⣄⠀⠉⠆⠈⠀⢉⡠⠊⠀⠀⠈⠢⣈⠁⠁⠠⠃⠀⢀⣴⠟⠀⠀⠀⢀⡴⠞⠁⠀⠀⣸",
    -- " ⠘⣧⣄⠀⠀⠀⠈⢛⣷⣦⣴⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣤⣤⣴⣾⣏⡀⠀⠀⣠⣴⠏",
    -- " ⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠙⠻⢶⣤⣄⣀⣀⣀⣀⣀⣤⣴⠶⠛⠉⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀",
    -- " ⠀⠰⣱⠋⠉⠻⢿⣿⣿⣿⣿⣿⡿⠃⢀⠈⠀⠘⢀⣿⣿⡏⠩⣿⣿⣿⣷⡀⠐⢄⠈⠻⣿⣿⣿⣿⣿⣿⠟⠋⠙⢣⡇⠀",
    -- " ⠀⠀⠹⡄⠀⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⢀⣾⣿⡿⠀⠀⠻⣿⣿⣿⣞⠀⠀⠐⠀⠀⠉⠉⠉⠁⠀⠀⠀⢠⡞⠀⠀",
    -- " ⠀⠀⠀⠘⢶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠋⠀⠀⠀⠀⠙⠿⣿⣿⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠋⠀⠀⠀",
    -- " ⠀⠀⠀⠀⠀⠉⠓⠦⣄⣀⣀⣀⣀⣤⡶⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⣷⣦⣤⣤⣤⣤⠶⠟⠉⠀⠀⠀⠀⠀",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("g", "  -> Org", ":e ~/School/refile.org<CR>"),
    dashboard.button("o", "  -> Open file manager", ":NvimTreeToggle<CR>"),
    dashboard.button("e", "  -> New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  -> Find file", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button("r", "  -> Recent", ":Telescope oldfiles<CR>"),
    -- dashboard.button( "g", "  -> Grep"   , ":Telescope grep_string<CR>"),
    dashboard.button("s", "  -> Settings", ":e $MYVIMRC<CR>"),
    dashboard.button("q", "  -> Quit NVIM", ":wqa!<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

-- treesitter
require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "rust", "ruby", "vim", "html", "python" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}

-- telescope
require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- comment
-- comment on nvim
require('Comment').setup()

-- gruvbox
-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    -- italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "",  -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
    -- transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme catppuccin-macchiato")
--

-- monokai-pro
require("monokai-pro").setup()

-- mason
require("mason").setup()

-- completions
local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),
})


-- lsp
-- require("mason-lspconfig").setup({
--     ensure_installed = { "lua_ls", "ts_ls" }
-- })

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.stdpath "config" .. "/lua"] = true,
                },
            },
        },
    }
}

require("lspconfig").ts_ls.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").tailwindcss.setup({})

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})



-- lualine
require('lualine').setup {
    options = {
        theme = 'gruvbox',
        -- theme = 'catppuccin',
        -- theme = 'monokai-pro',
        section_separators = { left = '', right = '' },
        component_separators = '',
        globalstatus = true,
        always_show_tabline = true,
    },
    sections = {
        lualine_c = {
            {
                'datetime',
                style = 'default'
            }
        }
    },
    tabline = {
        lualine_a = { 'buffers' },
        lualine_b = { 'branch' },
        -- lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' }
    },
}
--
-- require('lualine').setup{
-- 	options = {
-- 		theme = 'nordic',
-- 		section_separators = '',
-- 		component_separators = ''
-- 	}}

-- nvim cursor line
require('nvim-cursorline').setup {
    cursorline = {
        enable = true,
        timeout = 800,
        number = false,
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
    }
}

-- nvim-tree
-- nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
-- 		component_separators = ''
-- 	}}

-- nvim cursor line
require('nvim-cursorline').setup {
    cursorline = {
        enable = true,
        timeout = 800,
        number = false,
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
    }
}

-- nvim-tree
-- nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
