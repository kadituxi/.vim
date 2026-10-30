-- Interface
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Comportamento
vim.opt.confirm = true
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.autocomplete = true

-- Case sensitivity
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true

-- Pesquisa
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Indentação
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Clipboard do sistema
vim.opt.clipboard = "unnamedplus"

-- Tema de cores
vim.cmd.colorscheme("habamax")

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
require("nvim-autopairs").setup {}

-- Configuração dos LSPs
vim.lsp.config('clangd', {
    filetypes = { 'c', 'cpp' },
})

vim.lsp.enable({ 'pyright', 'clangd' })

-- Meus atalhos de teclado
local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-s>", ":w<CR>")
keymap("n", "<C-q>", ":q<CR>")
keymap("n", "<C-y>", ":%y+<CR>")
keymap("n", "<C-e>", ":Exp<CR>")
keymap("n", "<Tab>", ":bn<CR>")

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local bufnr = args.buf
        local opts = { buffer = bufnr }
        
        keymap('n', 'K', vim.lsp.buf.hover, opts)
        keymap('n', 'gd', vim.lsp.buf.definition, opts)
        keymap('n', 'gD', vim.lsp.buf.declaration, opts)
        keymap('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap('n', 'gr', vim.lsp.buf.references, opts)

        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

        vim.keymap.set('n', '<leader>f', function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end;
})
