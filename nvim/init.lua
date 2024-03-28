-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("set shell=pwsh")

vim.cmd("command Dotfiles :e C:/git/dotfiles")
vim.cmd("nnoremap <leader>v <C-V>")
