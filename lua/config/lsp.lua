-- Configuração dos LSPs
vim.lsp.config('clangd', {
    filetypes = { 'c', 'cpp' },
})

vim.lsp.enable({ 'pyright', 'clangd' })
