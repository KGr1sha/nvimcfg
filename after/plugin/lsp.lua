vim.lsp.enable('luals')
vim.lsp.enable('clangd')
vim.lsp.enable('gopls')
vim.lsp.enable('pyright')

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp", { clear = true }),
    callback = function()
        vim.keymap.set('i', '<C-n>', '<C-X><C-O>')
    end
})
