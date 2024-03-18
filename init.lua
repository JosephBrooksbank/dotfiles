vim.cmd('source ~/.vimrc')

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

local plugins = {
        { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
        {
            "williamboman/mason.nvim"
        },
        {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        {
                "neovim/nvim-lspconfig"
        },
        {
          'mrcjkb/rustaceanvim',
          version = '^4', -- Recommended
          ft = { 'rust' },
        }
}

local opts = {
}

require("lazy").setup(plugins, opts)

-- LSP stuff
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
-- after mason install, set up rust with
-- :MasonInstall rust-analyzer codelldb

vim.cmd.colorscheme "catppuccin-mocha"
