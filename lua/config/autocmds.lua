-- Configuração dos meus autocomands
local keymap = vim.keymap.set

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
