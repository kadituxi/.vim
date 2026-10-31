-- Meus Plugins
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/windwp/nvim-autopairs',
})

-- Configuração básica do Lualine
require('lualine').setup {
    options = {
        theme = 'iceberg_dark'
    }
}

-- Configuração do nvim-autopairs
require('nvim-autopairs').setup {}
