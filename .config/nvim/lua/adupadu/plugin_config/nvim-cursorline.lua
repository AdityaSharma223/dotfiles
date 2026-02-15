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
